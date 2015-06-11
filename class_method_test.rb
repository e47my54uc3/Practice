class Book

  def set_title_author_pages(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end

  def description
    "#{@title} is a #{@pages} page book written by #{@author}"
  end

  def title
    @title
  end 
  def pages
    @pages
  end
  def author
    @author
  end

end

b = Book.new

b.set_title_author_pages("LOTR", "J. R. R. Tolkien", 1000)

p b.description
p b.title
