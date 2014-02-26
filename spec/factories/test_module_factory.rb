# -*- coding: utf-8 -*-
class Range
  def random
    Random.rand self
  end
end

class Forgery::Hospital
  def self.name
    "#{upper}" + "#{lower}"
  end

  private
  class << self
    def upper
      %w(京都 宮崎 熊本 東京 沖縄).sample
    end
    
    def lower
      %w(病院 医院 クリニック 診療所).sample
    end
  end
end

FactoryGirl.define do
  factory :test_module do
    sequence(:at0005) { |n| "#{n}"}
#    at0005 { generate(:regist_id) }
    at0006 { Forgery(:date).date.to_s }
    at0007 { Forgery(:date).date.to_s }
    at0008 { Forgery(:date).date.to_s }
    at0011 { %w(mid final).sample }
    at0010 { "#{at0011}" == 'mid' ? '中間' : '最終'}
    at0012 'mmLb0001'
    at0014 '肝臓セット'
    at0015 'SET0007'
    at0016 'LOCAL0012'
    at0018 { Forgery(:hospital).name }
    at0051 'Blood'
    at0052 '0002'
    at0053 'LOCAL0013'
    at0061_1 'T-Bil'
    at0070_1 { (0.2..2.1).random }
    at0076_1 'mg/dl'
    at0061_2 'AST'
    at0070_2 { (10..120).random }
    at0076_2 'IU/l'
    at0061_3 'ALT'
    at0070_3 { (20..150).random }
    at0076_3 'IU/l'
    at0061_4 'ALP'
    at0070_4 { (30..200).random }
    at0076_4 'IU/l'
    at0061_5 'gGTP'
    at0070_5 { (20..120).random }
    at0076_5 'IU/l'
  end
end
