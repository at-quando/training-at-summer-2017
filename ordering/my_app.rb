class MyApp < Sinatra::Base
	$connection=Mysql2::Client.new(
		:host =>"localhost",
		:username=> "root",
		:password=> '',
		:database=> 'book_shelf')
	
	get '/' do
			redirect '/home'		
	end
	get '/home' do
		 @books= $connection.query("SELECT * FROM books")
			erb :home
	end

	get '/books' do
			@books= $connection.query("SELECT * FROM books")
			erb :books
	end

	get '/new' do
			erb :new
	end

	post '/new' do
		  @filename = params[:file][:filename]
		  file = params[:file][:tempfile]
		  path="images/#{@filename}"
		  File.open("./public/#{path}", 'wb') do |f|
		  f.write(file.read)
  	end 
  	$connection.query("INSERT INTO books(`id`,`name`, `description`, `author`,`image`) VALUES (\"#{params['id']}\", \"#{params['name']}\", \"#{params['description']}\", \"#{params['author']}\" , \"#{path}\")")
  	redirect '/books'
  end

  get '/books/edit/:id' do
  	@books = $connection.query("SELECT * FROM books WHERE id = #{params['id']}").first
  	erb :update
  end

  put '/books/edit/' do
  	$connection.query("UPDATE books SET id = \"#{params['id']}\" , name = \"#{params['name']}\", description = \"#{params['description']}\", author = \"#{params['author']}\", image = \"#{params['image']}\"	WHERE id = #{params['id']}")
  	redirect '/books'
  end

  delete '/books/:id' do
  	$connection.query("DELETE FROM books where id = #{params['id']}")
  	redirect '/books'
	end

	get '/books/view/:id' do
		@users = $connection.query("SELECT * FROM users")
		@book = $connection.query("SELECT * FROM books WHERE id = #{params['id']}").first
		erb :bookinfo
	end

	post '/order/:id' do
	  user = $connection.query("SELECT * FROM book_shelf.users WHERE username = \"#{params['username']}\"").first
	  query="INSERT INTO book_shelf.Order(`user_id`, `book_id`, `quantity`) VALUES ( \'#{user['id']}\', \"#{params['id']}\", \"#{params['quantity']}\")"
		$connection.query(query)
		redirect '/'
	end

	get '/order' do
		@orders= $connection.query("SELECT u.username, u.firstname, u.lastname, o.user_id, o.book_id, o.order_id, o.quantity, b.name, b.author FROM book_shelf.Order o JOIN book_shelf.users u ON u.id = o.user_id JOIN book_shelf.books b ON b.id=o.book_id")
		erb :order
	end

end