class Gpa < ApplicationRecord
    enum :evaluation, [:S, :A, :B, :C, :D, :F, :Z]
end
