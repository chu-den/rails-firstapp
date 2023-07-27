class Task < ApplicationRecord
    enum :status,[:todo, :doing, :done]
end
