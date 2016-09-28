#class ApplicationPolicy
#  attr_reader :role, :record
#
#  def initialize(role, record)
#    @role = role
#    @record = record
#  end
#
#  def index?
#    false
#  end
#
#  def show?
#    scope.where(:id => record.id).exists?
#  end
#
#  def create?
#    false
#  end
#
#  def new?
#    create?
#  end
#
#  def update?
#    false
#  end
#
#  def edit?
#    update?
#  end
#
#  def destroy?
#    false
#  end
#
#  def scope
#    Pundit.policy_scope!(role, record.class)
#  end
#
#  class Scope
#    attr_reader :role, :scope
#
#    def initialize(role, scope)
#      @role = role
#      @scope = scope
#    end
#
#    def resolve
#      scope
#    end
#  end
#end
