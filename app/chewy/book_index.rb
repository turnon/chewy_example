class BookIndex < Chewy::Index
  define_type Book.includes(:author, :tags, :comments) do
    witchcraft!
    field :title, type: 'text'
    field :author, value: ->{ author.name }
    field :tags, type: 'keyword', value: ->{ tags.map(&:name) }
    field :comments, type: 'nested' do
      field :comment, value: -> (book, comment) { comment.comment }
      field :rating
    end
  end
end
