require "./*"

# FNV Hash (http://www.isthe.com/chongo/tech/comp/fnv/#FNV-param)
module Cfnv
    module Parameter
        abstract struct Params
            abstract def prime
            abstract def offset_basis
        end

        struct Bit32 < Params
            def initialize
                @prime = 16777619_u32
                @offset_basis = 2166136261_u32
            end

            getter prime : UInt32
            getter offset_basis : UInt32
        end

        struct Bit64 < Params
            def initialize
                @prime = 1099511628211_u64
                @offset_basis = 14695981039346656037_u64
            end

            getter prime : UInt64
            getter offset_basis : UInt64
        end
    end

    def self.fnv1a(bytes : Array(UInt8) | Slice(UInt8), params : Parameter::Params)
        hash = params.offset_basis

        bytes.each do |byte|
            hash = (hash ^ byte) * params.prime
        end

        hash
    end

    def self.fnv1(bytes : Array(UInt8) | Slice(UInt8), params : Parameter::Params)
        hash = params.offset_basis

        bytes.each do |byte|
            hash = (params.prime * hash) ^ byte
        end

        hash
    end
end
