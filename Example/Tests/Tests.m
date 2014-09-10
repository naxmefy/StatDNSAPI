//
//  StatDNSAPITests.m
//  StatDNSAPITests
//
//  Created by MRW Neundorf on 09/10/2014.
//  Copyright (c) 2014 MRW Neundorf. All rights reserved.
//

SpecBegin(InitialSpecs)

describe(@"these will not fail", ^{

    it(@"can do maths", ^{
        expect(1).to.equal(1);
    });

    it(@"can read", ^{
        expect(@"number").to.equal(@"number");
    });
    
    it(@"will wait and fail", ^AsyncBlock {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
            done();
        });
    });
});

describe(@"these will pass", ^{
    
    it(@"can do maths", ^{
        expect(1).beLessThan(23);
    });
    
    it(@"can read", ^{
        expect(@"team").toNot.contain(@"I");
    });
    
    it(@"will wait and succeed", ^AsyncBlock {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
            done();
        });
    });
});

SpecEnd
