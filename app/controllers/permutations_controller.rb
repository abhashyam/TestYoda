class PermutationsController < ApplicationController
  def show
    @permutation = Permutation.find(params[:id])
  end

  def index
    @permutations = Permutation.all
  end
end
