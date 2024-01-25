.class public Lorg/codeaurora/ims/ImsRadioUtils;
.super Ljava/lang/Object;
.source "ImsRadioUtils.java"


# static fields
.field private static final INVALID_CONNID:I

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    const-string v0, "ImsRadioUtils"

    sput-object v0, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FacilityTypeFromHal(I)I
    .locals 1
    .param p0, "facilityType"    # I

    .line 1508
    const/16 v0, 0x8

    packed-switch p0, :pswitch_data_0

    .line 1535
    return v0

    .line 1530
    :pswitch_0
    const/16 v0, 0xc

    return v0

    .line 1528
    :pswitch_1
    const/16 v0, 0xb

    return v0

    .line 1526
    :pswitch_2
    const/16 v0, 0xa

    return v0

    .line 1524
    :pswitch_3
    const/16 v0, 0x9

    return v0

    .line 1522
    :pswitch_4
    return v0

    .line 1520
    :pswitch_5
    const/4 v0, 0x7

    return v0

    .line 1518
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 1516
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 1532
    :pswitch_8
    const/4 v0, 0x4

    return v0

    .line 1514
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 1512
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 1510
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blockReasonDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;)Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    .locals 3
    .param p0, "inBlockReasonDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;

    .line 2426
    new-instance v0, Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;-><init>()V

    .line 2428
    .local v0, "outBlockReasonDetails":Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReasonType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 2429
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReasonType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->regFailureReasonTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->setRegFailureReasonType(I)V

    .line 2433
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReason:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2434
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReason:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->setRegFailureReason(I)V

    .line 2437
    :cond_1
    return-object v0
.end method

.method public static blockReasonTypeFromHal(I)I
    .locals 1
    .param p0, "inBlockReason"    # I

    .line 2410
    packed-switch p0, :pswitch_data_0

    .line 2420
    const/4 v0, -0x1

    return v0

    .line 2418
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2416
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2414
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2412
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blockStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;
    .locals 3
    .param p0, "inBlockStatus"    # Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    .line 2391
    if-nez p0, :cond_0

    .line 2392
    const/4 v0, 0x0

    return-object v0

    .line 2395
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/BlockStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/BlockStatusInfo;-><init>()V

    .line 2397
    .local v0, "outBlockStatus":Lorg/codeaurora/ims/BlockStatusInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->blockReason:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 2398
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->blockReason:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->blockReasonTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockStatusInfo;->setReason(I)V

    .line 2401
    :cond_1
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->hasBlockReasonDetails:Z

    if-eqz v1, :cond_2

    .line 2402
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->blockReasonDetails:Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->blockReasonDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;)Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockStatusInfo;->setReasonDetails(Lorg/codeaurora/ims/BlockReasonDetailsInfo;)V

    .line 2406
    :cond_2
    return-object v0
.end method

.method public static buildCFStatusResponseFromHal(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;",
            ">;)[",
            "Lorg/codeaurora/ims/ImsCallForwardTimerInfo;"
        }
    .end annotation

    .line 1372
    .local p0, "inCfInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    const/4 v0, 0x0

    .line 1374
    .local v0, "outCfInfoList":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    if-eqz p0, :cond_a

    .line 1375
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1376
    .local v1, "infoListSize":I
    new-array v0, v1, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 1378
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_9

    .line 1379
    new-instance v3, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;-><init>()V

    aput-object v3, v0, v2

    .line 1380
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    .line 1382
    .local v3, "inCfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    iget v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_0

    .line 1383
    aget-object v4, v0, v2

    iget v6, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    .line 1386
    :cond_0
    iget v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    if-eq v4, v5, :cond_1

    .line 1387
    aget-object v4, v0, v2

    iget v6, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    .line 1390
    :cond_1
    iget v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    if-eq v4, v5, :cond_2

    .line 1391
    aget-object v4, v0, v2

    iget v6, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    .line 1394
    :cond_2
    iget v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    if-eq v4, v5, :cond_3

    .line 1395
    aget-object v4, v0, v2

    iget v6, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->toa:I

    .line 1398
    :cond_3
    aget-object v4, v0, v2

    iget-object v6, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    .line 1400
    iget v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    if-eq v4, v5, :cond_4

    .line 1401
    aget-object v4, v0, v2

    iget v6, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->timeSeconds:I

    .line 1404
    :cond_4
    iget-boolean v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerStart:Z

    if-eqz v4, :cond_8

    iget-boolean v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerEnd:Z

    if-eqz v4, :cond_8

    .line 1405
    const-string v4, "responseQueryCallForward for Timer"

    invoke-static {v4}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1407
    iget-object v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    .line 1408
    .local v4, "startCallTimerInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    if-eq v6, v5, :cond_5

    .line 1409
    aget-object v6, v0, v2

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    iput v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startHour:I

    .line 1412
    :cond_5
    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    if-eq v6, v5, :cond_6

    .line 1413
    aget-object v6, v0, v2

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    iput v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startMinute:I

    .line 1416
    :cond_6
    iget-object v6, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    .line 1418
    .local v6, "endCallTimerInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    iget v7, v6, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    if-eq v7, v5, :cond_7

    .line 1419
    aget-object v7, v0, v2

    iget v8, v6, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endHour:I

    .line 1422
    :cond_7
    iget v7, v6, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    if-eq v7, v5, :cond_8

    .line 1423
    aget-object v5, v0, v2

    iget v7, v6, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    iput v7, v5, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endMinute:I

    .line 1378
    .end local v3    # "inCfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    .end local v4    # "startCallTimerInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    .end local v6    # "endCallTimerInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1427
    .end local v1    # "infoListSize":I
    .end local v2    # "i":I
    :cond_9
    goto :goto_1

    .line 1428
    :cond_a
    const/4 v1, 0x0

    new-array v0, v1, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 1429
    const-string v1, "inCfInfoList is null."

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1432
    :goto_1
    return-object v0
.end method

.method public static buildCallForwardInfo(IILjava/lang/String;II)Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    .locals 2
    .param p0, "cfReason"    # I
    .param p1, "serviceClass"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "timeSeconds"    # I

    .line 1307
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 1309
    .local v0, "cfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    iput p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    .line 1310
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    .line 1311
    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    .line 1312
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    .line 1313
    if-eqz p2, :cond_0

    .line 1314
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 1316
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerStart:Z

    .line 1317
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerEnd:Z

    .line 1318
    iput p4, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    .line 1320
    return-object v0
.end method

.method public static buildCallFwdTimerInfo(Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;II)V
    .locals 1
    .param p0, "callFwdTimerInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 1361
    const v0, 0x7fffffff

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->year:I

    .line 1362
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->month:I

    .line 1363
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->day:I

    .line 1364
    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    .line 1365
    iput p2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    .line 1366
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->second:I

    .line 1367
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->timezone:I

    .line 1368
    return-void
.end method

.method public static buildCallModifyInfo(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    .locals 3
    .param p0, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 1679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildCallModifyInfo callModify= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1680
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1681
    .local v0, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    iget v1, p0, Lorg/codeaurora/ims/CallModify;->call_index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callIndex:I

    .line 1683
    iget-object v1, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_0

    .line 1684
    const/4 v1, 0x1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->hasCallDetails:Z

    .line 1685
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtils;->callDetailsToHal(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;Lorg/codeaurora/ims/CallDetails;)V

    .line 1689
    :cond_0
    const/16 v1, 0xd

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->failCause:I

    .line 1691
    return-object v0
.end method

.method public static buildCbNumListInfo([Ljava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    .locals 4
    .param p0, "inCbNumList"    # [Ljava/lang/String;
    .param p1, "serviceClass"    # I

    .line 2132
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    .line 2134
    .local v0, "outCbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    const v1, 0x7fffffff

    if-eq p1, v1, :cond_0

    .line 2135
    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->serviceClass:I

    .line 2138
    :cond_0
    if-eqz p0, :cond_2

    .line 2139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2140
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;-><init>()V

    .line 2141
    .local v2, "cbNumInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    const/4 v3, 0x2

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->status:I

    .line 2142
    aget-object v3, p0, v1

    if-eqz v3, :cond_1

    .line 2143
    aget-object v3, p0, v1

    iput-object v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->number:Ljava/lang/String;

    .line 2145
    :cond_1
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->cbNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2139
    .end local v2    # "cbNumInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2149
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    .locals 2
    .param p0, "item"    # I
    .param p1, "boolValue"    # Z
    .param p2, "intValue"    # I
    .param p3, "stringValue"    # Ljava/lang/String;
    .param p4, "errorCause"    # I

    .line 1749
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1751
    .local v0, "configInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->configInfoItemToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->item:I

    .line 1752
    const/4 v1, 0x1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->hasBoolValue:Z

    .line 1753
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->boolValue:Z

    .line 1754
    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    .line 1755
    if-eqz p3, :cond_0

    .line 1756
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 1758
    :cond_0
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    .line 1760
    return-object v0
.end method

.method public static buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    .locals 1
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "clirMode"    # I
    .param p2, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p3, "isEncrypted"    # Z

    .line 878
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/codeaurora/ims/ImsRadioUtils;->buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    move-result-object v0

    return-object v0
.end method

.method public static buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    .locals 5
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "clirMode"    # I
    .param p2, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p3, "isEncrypted"    # Z
    .param p4, "redialInfo"    # Lorg/codeaurora/ims/RedialInfo;

    .line 891
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;-><init>()V

    .line 893
    .local v0, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    if-eqz p0, :cond_0

    .line 894
    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->address:Ljava/lang/String;

    .line 896
    :cond_0
    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->clirMode:I

    .line 898
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->getIpPresentation(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->presentation:I

    .line 900
    const/4 v1, 0x1

    if-eqz p2, :cond_3

    .line 901
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasCallDetails:Z

    .line 902
    if-eqz p4, :cond_1

    .line 903
    invoke-virtual {p4}, Lorg/codeaurora/ims/RedialInfo;->getRetryCallFailCause()I

    move-result v2

    if-eqz v2, :cond_1

    .line 904
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RetryCallFailReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 905
    invoke-virtual {p4}, Lorg/codeaurora/ims/RedialInfo;->getRetryCallFailCause()I

    move-result v3

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallFailCauseForImsReason(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 904
    invoke-virtual {p2, v2}, Lorg/codeaurora/ims/CallDetails;->addExtra(Ljava/lang/String;)V

    .line 907
    :cond_1
    if-eqz p4, :cond_2

    .line 908
    invoke-virtual {p4}, Lorg/codeaurora/ims/RedialInfo;->getRetryCallFailRadioTech()I

    move-result v2

    if-eqz v2, :cond_2

    .line 909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RetryCallFailRadioTech="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 910
    invoke-virtual {p4}, Lorg/codeaurora/ims/RedialInfo;->getRetryCallFailRadioTech()I

    move-result v3

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->mapRadioTechToHal(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 909
    invoke-virtual {p2, v2}, Lorg/codeaurora/ims/CallDetails;->addExtra(Ljava/lang/String;)V

    .line 912
    :cond_2
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-static {v2, p2}, Lorg/codeaurora/ims/ImsRadioUtils;->callDetailsToHal(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;Lorg/codeaurora/ims/CallDetails;)V

    .line 915
    :cond_3
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->getIsConferenceUri(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v2

    .line 916
    .local v2, "isConferenceUri":Z
    if-eqz v2, :cond_4

    .line 917
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isConferenceUri:Z

    .line 918
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsConferenceUri:Z

    .line 920
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lorg/codeaurora/ims/CallDetails;->getCallPull()Z

    move-result v3

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    .line 921
    .local v3, "isCallPull":Z
    :goto_0
    if-eqz v3, :cond_6

    .line 922
    iput-boolean v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isCallPull:Z

    .line 923
    iput-boolean v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsCallPull:Z

    .line 926
    :cond_6
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsEncrypted:Z

    .line 927
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isEncrypted:Z

    .line 929
    if-eqz p2, :cond_7

    .line 930
    invoke-virtual {p2}, Lorg/codeaurora/ims/CallDetails;->getMultiIdentityLineInfo()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    .line 931
    .local v1, "multiIdentityLineInfo":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    :goto_1
    iget-object v4, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {v1, v4}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->toMultiIdentityLineInfoHal(Lorg/codeaurora/ims/MultiIdentityLineInfo;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V

    .line 935
    return-object v0
.end method

.method public static buildDriverCallImsFromHal(Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 9
    .param p0, "call"    # Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;

    .line 173
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    .line 174
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->createVerstatInfo(Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;)Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/VerstatInfo;)V

    .line 175
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->state:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 176
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callStateFromHal(I)Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 179
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->index:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 180
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->index:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 183
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->toa:I

    if-eq v1, v2, :cond_2

    .line 184
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->toa:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    .line 187
    :cond_2
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsMpty:Z

    if-eqz v1, :cond_3

    .line 188
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 191
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsMT:Z

    if-eqz v1, :cond_4

    .line 192
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 195
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->als:I

    if-eq v1, v2, :cond_5

    .line 196
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->als:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->als:I

    .line 199
    :cond_5
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsVoice:Z

    if-eqz v1, :cond_6

    .line 200
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    .line 203
    :cond_6
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsVoicePrivacy:Z

    if-eqz v1, :cond_7

    .line 204
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 207
    :cond_7
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->numberPresentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 209
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 210
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->namePresentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 213
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsEncrypted:Z

    if-eqz v1, :cond_8

    .line 214
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    .line 217
    :cond_8
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->tirMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->isTirOverwriteAllowed(I)Z

    move-result v1

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    .line 219
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/V1_7/CrsData;

    iget-object v3, v0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-static {v1, v3}, Lorg/codeaurora/ims/ImsRadioUtils;->crsDataFromHal(Lvendor/qti/hardware/radio/ims/V1_7/CrsData;Lorg/codeaurora/ims/CrsData;)V

    .line 220
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isPreparatory:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 222
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->diversionInfo:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    .line 225
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsVideoConfSupported:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_a

    .line 226
    nop

    .line 227
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isVideoConfSupported:Z

    if-eqz v1, :cond_9

    .line 228
    const/4 v1, 0x2

    goto :goto_0

    .line 229
    :cond_9
    move v1, v3

    :goto_0
    or-int/2addr v1, v4

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 232
    :cond_a
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasCallDetails:Z

    if-eqz v1, :cond_b

    .line 233
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallDetails(Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;)Lorg/codeaurora/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 236
    :cond_b
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 237
    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->forwardedNumber:Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->number:Ljava/lang/String;

    iget v5, v0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    invoke-static {v1, v5}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "phoneNumber":Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 240
    const-string v5, "&"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "splitPhoneNumber":[Ljava/lang/String;
    aget-object v3, v5, v3

    iput-object v3, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 242
    array-length v3, v5

    if-le v3, v4, :cond_c

    .line 243
    aget-object v3, v5, v4

    iput-object v3, v0, Lorg/codeaurora/ims/DriverCallIms;->forwardedNumber:Ljava/lang/String;

    .line 247
    .end local v5    # "splitPhoneNumber":[Ljava/lang/String;
    :cond_c
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;

    iget-object v4, v0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-static {v3, v4}, Lorg/codeaurora/ims/ImsRadioUtils;->callProgressInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;Lorg/codeaurora/ims/CallProgressInfo;)V

    .line 249
    const/4 v3, 0x0

    .line 250
    .local v3, "imsReasonCode":I
    const/4 v4, 0x0

    .line 251
    .local v4, "imsReasonExtraCode":I
    const/4 v5, 0x0

    .line 252
    .local v5, "imsReasonExtraMessage":Ljava/lang/String;
    iget-boolean v6, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasFailCause:Z

    if-eqz v6, :cond_10

    .line 253
    const/4 v6, 0x0

    .line 255
    .local v6, "networkError":Ljava/lang/String;
    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-boolean v7, v7, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->hasErrorDetails:Z

    if-eqz v7, :cond_d

    .line 256
    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v7, v7, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v6, v7, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 259
    :cond_d
    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget v7, v7, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->failCause:I

    .line 261
    .local v7, "failCause":I
    const/16 v8, 0x225

    if-eq v7, v8, :cond_f

    .line 262
    invoke-static {v7}, Lorg/codeaurora/ims/ImsRadioUtils;->getImsReasonForCallFailCause(I)I

    move-result v3

    .line 263
    iget-object v8, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-boolean v8, v8, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->hasErrorDetails:Z

    if-eqz v8, :cond_e

    iget-object v8, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v8, v8, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v8, v8, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    if-eq v8, v2, :cond_e

    .line 265
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    goto :goto_1

    .line 267
    :cond_e
    const-string v2, "CallFailCauseResponse has no int error code!"

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 270
    :goto_1
    invoke-static {v7}, Lorg/codeaurora/ims/ImsRadioUtils;->mapSipErrorFromCallFailCause(I)I

    move-result v2

    iput v2, v0, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    .line 273
    if-eqz v6, :cond_10

    .line 274
    move-object v5, v6

    goto :goto_2

    .line 277
    :cond_f
    const-string v2, "CallFailCauseResponse failCause is Invalid"

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 281
    .end local v6    # "networkError":Ljava/lang/String;
    .end local v7    # "failCause":I
    :cond_10
    :goto_2
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v3, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 285
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->fromMultiIdentityLineInfoHal(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 286
    return-object v0
.end method

.method public static buildExplicitCallTransferInfo(IILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    .locals 2
    .param p0, "srcCallId"    # I
    .param p1, "type"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "destCallId"    # I

    .line 2281
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;-><init>()V

    .line 2282
    .local v0, "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->callId:I

    .line 2283
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->ectTypeToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->ectType:I

    .line 2284
    if-eqz p2, :cond_0

    .line 2285
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->targetAddress:Ljava/lang/String;

    .line 2287
    :cond_0
    if-lez p3, :cond_1

    .line 2288
    iput p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->targetCallId:I

    goto :goto_0

    .line 2290
    :cond_1
    const v1, 0x7fffffff

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->targetCallId:I

    .line 2292
    :goto_0
    return-object v0
.end method

.method public static buildHangupRequest(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;
    .locals 8
    .param p0, "connectionId"    # I
    .param p1, "userUri"    # Ljava/lang/String;
    .param p2, "confUri"    # Ljava/lang/String;
    .param p3, "mpty"    # Z
    .param p4, "failCause"    # I
    .param p5, "errorInfo"    # Ljava/lang/String;

    .line 984
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;-><init>()V

    .line 990
    .local v0, "hangup":Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;
    const v1, 0x7fffffff

    if-eqz p0, :cond_0

    .line 991
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connIndex:I

    goto :goto_0

    .line 993
    :cond_0
    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connIndex:I

    .line 996
    :goto_0
    if-eqz p1, :cond_1

    .line 997
    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connUri:Ljava/lang/String;

    .line 999
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->hasMultiParty:Z

    .line 1000
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->multiParty:Z

    .line 1001
    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->conf_id:I

    .line 1002
    if-eq p4, v1, :cond_4

    .line 1003
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->hasFailCauseResponse:Z

    .line 1004
    const/4 v1, 0x0

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1005
    sget-object v2, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangupWithReason errorInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_2

    aget-byte v5, v2, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 1007
    .local v5, "b":Ljava/lang/Byte;
    iget-object v6, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v6, v6, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1006
    .end local v5    # "b":Ljava/lang/Byte;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1010
    :cond_2
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallFailCauseForImsReason(I)I

    move-result v2

    .line 1011
    .local v2, "callFailCause":I
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iput v2, v3, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->failCause:I

    .line 1012
    sget-object v3, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hangupWithReason callFailCause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1015
    const/16 v3, 0x1fd

    if-ne v2, v3, :cond_3

    .line 1016
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_3

    aget-byte v6, v3, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    .line 1017
    .local v6, "b":Ljava/lang/Byte;
    iget-object v7, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v7, v7, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1016
    .end local v6    # "b":Ljava/lang/Byte;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1020
    :cond_3
    sget-object v1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangupWithReason MISC callFailCause, errorInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1022
    .end local v2    # "callFailCause":I
    :cond_4
    return-object v0
.end method

.method public static buildImsSms(ILjava/lang/String;Ljava/lang/String;Z[B)Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    .locals 6
    .param p0, "messageRef"    # I
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "isRetry"    # Z
    .param p4, "pdu"    # [B

    .line 1325
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;-><init>()V

    .line 1327
    .local v0, "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->messageRef:I

    .line 1328
    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->format:Ljava/lang/String;

    .line 1329
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->shallRetry:Z

    .line 1330
    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->smsc:Ljava/lang/String;

    .line 1331
    array-length v1, p4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-byte v3, p4, v2

    .line 1332
    .local v3, "a":B
    iget-object v4, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->pdu:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    .end local v3    # "a":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1334
    :cond_1
    return-object v0
.end method

.method public static buildServiceStatusInfo(IIII)Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    .locals 3
    .param p0, "srvType"    # I
    .param p1, "rat"    # I
    .param p2, "enabled"    # I
    .param p3, "restrictCause"    # I

    .line 291
    sget-object v0, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildServiceStatusInfo srvType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;-><init>()V

    .line 294
    .local v0, "statusForAccessTech":Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->mapRadioTechToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->networkMode:I

    .line 295
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->status:I

    .line 296
    iput p3, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->restrictCause:I

    .line 297
    const/4 v1, 0x0

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->hasRegistration:Z

    .line 299
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;-><init>()V

    .line 300
    .local v1, "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->hasIsValid:Z

    .line 301
    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->isValid:Z

    .line 302
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeToHal(I)I

    move-result v2

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->callType:I

    .line 303
    iget-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    return-object v1
.end method

.method public static buildServiceStatusInfoList(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "restrictCause"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/CapabilityStatus;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;"
        }
    .end annotation

    .line 310
    .local p0, "capabilityStatusList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/CapabilityStatus;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v0, "serviceStatusInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/CapabilityStatus;

    .line 312
    .local v2, "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    sget-object v3, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildServiceStatusInfoList capabilityStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    nop

    .line 314
    invoke-virtual {v2}, Lorg/codeaurora/ims/CapabilityStatus;->getCapability()I

    move-result v3

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->mapCapabilityToSrvType(I)I

    move-result v3

    .line 315
    invoke-virtual {v2}, Lorg/codeaurora/ims/CapabilityStatus;->getRadioTech()I

    move-result v4

    invoke-static {v4}, Lorg/codeaurora/ims/ImsRadioUtils;->mapRadioTechToHidlRadioTech(I)I

    move-result v4

    .line 316
    invoke-virtual {v2}, Lorg/codeaurora/ims/CapabilityStatus;->getStatus()I

    move-result v5

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->mapValueToServiceStatus(I)I

    move-result v5

    .line 313
    invoke-static {v3, v4, v5, p1}, Lorg/codeaurora/ims/ImsRadioUtils;->buildServiceStatusInfo(IIII)Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    move-result-object v3

    .line 318
    .local v3, "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .end local v2    # "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    .end local v3    # "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    goto :goto_0

    .line 320
    :cond_0
    return-object v0
.end method

.method public static callDetailsToHal(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;Lorg/codeaurora/ims/CallDetails;)V
    .locals 3
    .param p0, "imsRadioCallDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;
    .param p1, "callDetails"    # Lorg/codeaurora/ims/CallDetails;

    .line 121
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeToHal(I)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 122
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->callDomainToHal(I)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 124
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->rttModeToHal(I)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 126
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    if-ge v0, v1, :cond_1

    .line 129
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static callDomainFromHal(I)I
    .locals 1
    .param p0, "callDomain"    # I

    .line 1166
    packed-switch p0, :pswitch_data_0

    .line 1178
    const/4 v0, 0x4

    return v0

    .line 1174
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1172
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1170
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1168
    :pswitch_3
    const/16 v0, 0xb

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static callDomainToHal(I)I
    .locals 1
    .param p0, "callDomain"    # I

    .line 1183
    sparse-switch p0, :sswitch_data_0

    .line 1194
    const/4 v0, 0x4

    return v0

    .line 1185
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 1191
    :sswitch_1
    const/4 v0, 0x3

    return v0

    .line 1189
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 1187
    :sswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method private static callModifyFailCauseFromHal(I)I
    .locals 1
    .param p0, "failCause"    # I

    .line 1715
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1743
    return v0

    .line 1741
    :pswitch_0
    const/16 v0, 0x21

    return v0

    .line 1739
    :pswitch_1
    const/16 v0, 0x20

    return v0

    .line 1737
    :pswitch_2
    const/16 v0, 0x1f

    return v0

    .line 1735
    :pswitch_3
    const/16 v0, 0x1e

    return v0

    .line 1733
    :pswitch_4
    const/16 v0, 0x1d

    return v0

    .line 1731
    :pswitch_5
    const/16 v0, 0x1c

    return v0

    .line 1729
    :pswitch_6
    const/16 v0, 0x1b

    return v0

    .line 1727
    :pswitch_7
    const/16 v0, 0x10

    return v0

    .line 1725
    :pswitch_8
    const/4 v0, 0x7

    return v0

    .line 1723
    :pswitch_9
    const/4 v0, 0x6

    return v0

    .line 1721
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 1719
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 1717
    :pswitch_c
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static callModifyFromHal(Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;)Lorg/codeaurora/ims/CallModify;
    .locals 3
    .param p0, "callModifyInfo"    # Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;

    .line 1696
    new-instance v0, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 1698
    .local v0, "callModify":Lorg/codeaurora/ims/CallModify;
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->hasCallDetails:Z

    if-eqz v1, :cond_0

    .line 1699
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallDetails(Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;)Lorg/codeaurora/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 1702
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->callIndex:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1703
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->callIndex:I

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 1706
    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1707
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->failCause:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    .line 1708
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->failCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callModifyFailCauseFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1711
    :cond_2
    return-object v0
.end method

.method public static callProgressInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;Lorg/codeaurora/ims/CallProgressInfo;)V
    .locals 2
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;
    .param p1, "to"    # Lorg/codeaurora/ims/CallProgressInfo;

    .line 2553
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;->type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->callProgressInfoTypeFromHal(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CallProgressInfo;->setType(I)V

    .line 2555
    iget-short v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;->reasonCode:S

    const/16 v1, 0x7fff

    if-eq v0, v1, :cond_0

    .line 2556
    iget-short v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;->reasonCode:S

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CallProgressInfo;->setReasonCode(I)V

    .line 2559
    :cond_0
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;->reasonText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;->reasonText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2560
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;->reasonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CallProgressInfo;->setReasonText(Ljava/lang/String;)V

    .line 2562
    :cond_1
    return-void
.end method

.method public static callProgressInfoTypeFromHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2535
    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_0

    .line 2547
    return v0

    .line 2545
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 2543
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 2541
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 2539
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 2537
    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static callStateFromHal(I)Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1
    .param p0, "inCallState"    # I

    .line 1277
    packed-switch p0, :pswitch_data_0

    .line 1292
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1289
    :pswitch_0
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1287
    :pswitch_1
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1285
    :pswitch_2
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1283
    :pswitch_3
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1281
    :pswitch_4
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1279
    :pswitch_5
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static callTypeFromHal(I)I
    .locals 1
    .param p0, "callType"    # I

    .line 822
    packed-switch p0, :pswitch_data_0

    .line 848
    :pswitch_0
    const/16 v0, 0xa

    return v0

    .line 844
    :pswitch_1
    const/16 v0, 0x19

    return v0

    .line 842
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 840
    :pswitch_3
    const/16 v0, 0x18

    return v0

    .line 838
    :pswitch_4
    const/16 v0, 0x17

    return v0

    .line 836
    :pswitch_5
    const/16 v0, 0x16

    return v0

    .line 834
    :pswitch_6
    const/16 v0, 0x15

    return v0

    .line 832
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 830
    :pswitch_8
    const/4 v0, 0x3

    return v0

    .line 828
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 826
    :pswitch_a
    const/4 v0, 0x1

    return v0

    .line 824
    :pswitch_b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static callTypeToHal(I)I
    .locals 1
    .param p0, "callType"    # I

    .line 792
    sparse-switch p0, :sswitch_data_0

    .line 817
    const/16 v0, 0x9

    return v0

    .line 814
    :sswitch_0
    const/16 v0, 0xb

    return v0

    .line 810
    :sswitch_1
    const/16 v0, 0x8

    return v0

    .line 808
    :sswitch_2
    const/4 v0, 0x7

    return v0

    .line 806
    :sswitch_3
    const/4 v0, 0x6

    return v0

    .line 804
    :sswitch_4
    const/4 v0, 0x5

    return v0

    .line 812
    :sswitch_5
    const/16 v0, 0xa

    return v0

    .line 802
    :sswitch_6
    const/4 v0, 0x4

    return v0

    .line 800
    :sswitch_7
    const/4 v0, 0x3

    return v0

    .line 798
    :sswitch_8
    const/4 v0, 0x2

    return v0

    .line 796
    :sswitch_9
    const/4 v0, 0x1

    return v0

    .line 794
    :sswitch_a
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x5 -> :sswitch_5
        0x15 -> :sswitch_4
        0x16 -> :sswitch_3
        0x17 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public static clipStatusFromHal(I)I
    .locals 1
    .param p0, "clipStatus"    # I

    .line 1655
    packed-switch p0, :pswitch_data_0

    .line 1662
    const/4 v0, 0x2

    return v0

    .line 1659
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1657
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static conferenceCallStateFromHal(I)I
    .locals 1
    .param p0, "conferenceCallState"    # I

    .line 1667
    packed-switch p0, :pswitch_data_0

    .line 1674
    const/4 v0, 0x2

    return v0

    .line 1671
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1669
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static configFailureCauseFromHal(I)I
    .locals 1
    .param p0, "errorCause"    # I

    .line 2114
    packed-switch p0, :pswitch_data_0

    .line 2127
    const/4 v0, 0x5

    return v0

    .line 2124
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2122
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2120
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2118
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 2116
    :pswitch_4
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static configFailureCauseToHal(I)I
    .locals 1
    .param p0, "errorCause"    # I

    .line 2095
    packed-switch p0, :pswitch_data_0

    .line 2109
    const/4 v0, 0x6

    return v0

    .line 2107
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2105
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2103
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2101
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2099
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2097
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static configInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Lorg/codeaurora/ims/ImsConfigItem;
    .locals 3
    .param p0, "configInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    .line 1765
    if-nez p0, :cond_0

    .line 1766
    const/4 v0, 0x0

    return-object v0

    .line 1769
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsConfigItem;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsConfigItem;-><init>()V

    .line 1771
    .local v0, "config":Lorg/codeaurora/ims/ImsConfigItem;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->item:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->configInfoItemFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setItem(I)V

    .line 1773
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->hasBoolValue:Z

    if-eqz v1, :cond_1

    .line 1774
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->boolValue:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setBoolValue(Z)V

    .line 1777
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1778
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setIntValue(I)V

    .line 1781
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setStringValue(Ljava/lang/String;)V

    .line 1783
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    .line 1784
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setErrorCause(I)V

    .line 1787
    :cond_3
    return-object v0
.end method

.method public static configInfoItemFromHal(I)I
    .locals 1
    .param p0, "item"    # I

    .line 1944
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2090
    :pswitch_0
    return v0

    .line 2088
    :pswitch_1
    const/16 v0, 0x48

    return v0

    .line 2086
    :pswitch_2
    const/16 v0, 0x47

    return v0

    .line 2084
    :pswitch_3
    const/16 v0, 0x45

    return v0

    .line 2082
    :pswitch_4
    const/16 v0, 0x44

    return v0

    .line 2080
    :pswitch_5
    const/16 v0, 0x43

    return v0

    .line 2078
    :pswitch_6
    const/16 v0, 0x42

    return v0

    .line 2076
    :pswitch_7
    const/16 v0, 0x41

    return v0

    .line 2074
    :pswitch_8
    const/16 v0, 0x40

    return v0

    .line 2072
    :pswitch_9
    const/16 v0, 0x3f

    return v0

    .line 2070
    :pswitch_a
    const/16 v0, 0x3e

    return v0

    .line 2068
    :pswitch_b
    const/16 v0, 0x3d

    return v0

    .line 2066
    :pswitch_c
    const/16 v0, 0x3c

    return v0

    .line 2064
    :pswitch_d
    const/16 v0, 0x3b

    return v0

    .line 2062
    :pswitch_e
    const/16 v0, 0x3a

    return v0

    .line 2060
    :pswitch_f
    const/16 v0, 0x39

    return v0

    .line 2058
    :pswitch_10
    const/16 v0, 0x38

    return v0

    .line 2056
    :pswitch_11
    const/16 v0, 0x37

    return v0

    .line 2054
    :pswitch_12
    const/16 v0, 0x36

    return v0

    .line 2052
    :pswitch_13
    const/16 v0, 0x35

    return v0

    .line 2050
    :pswitch_14
    const/16 v0, 0x34

    return v0

    .line 2048
    :pswitch_15
    const/16 v0, 0x33

    return v0

    .line 2046
    :pswitch_16
    const/16 v0, 0x32

    return v0

    .line 2044
    :pswitch_17
    const/16 v0, 0x31

    return v0

    .line 2042
    :pswitch_18
    const/16 v0, 0x30

    return v0

    .line 2040
    :pswitch_19
    const/16 v0, 0x2f

    return v0

    .line 2038
    :pswitch_1a
    const/16 v0, 0x2e

    return v0

    .line 2036
    :pswitch_1b
    const/16 v0, 0x2d

    return v0

    .line 2034
    :pswitch_1c
    const/16 v0, 0x2c

    return v0

    .line 2032
    :pswitch_1d
    const/16 v0, 0x2b

    return v0

    .line 2030
    :pswitch_1e
    const/16 v0, 0x2a

    return v0

    .line 2028
    :pswitch_1f
    const/16 v0, 0x29

    return v0

    .line 2026
    :pswitch_20
    const/16 v0, 0x28

    return v0

    .line 2024
    :pswitch_21
    const/16 v0, 0x27

    return v0

    .line 2022
    :pswitch_22
    const/16 v0, 0x26

    return v0

    .line 2020
    :pswitch_23
    const/16 v0, 0x25

    return v0

    .line 2018
    :pswitch_24
    const/16 v0, 0x24

    return v0

    .line 2016
    :pswitch_25
    const/16 v0, 0x23

    return v0

    .line 2014
    :pswitch_26
    const/16 v0, 0x22

    return v0

    .line 2012
    :pswitch_27
    const/16 v0, 0x21

    return v0

    .line 2010
    :pswitch_28
    const/16 v0, 0x20

    return v0

    .line 2008
    :pswitch_29
    const/16 v0, 0x1f

    return v0

    .line 2006
    :pswitch_2a
    const/16 v0, 0x1e

    return v0

    .line 2004
    :pswitch_2b
    const/16 v0, 0x1d

    return v0

    .line 2002
    :pswitch_2c
    const/16 v0, 0x1c

    return v0

    .line 2000
    :pswitch_2d
    const/16 v0, 0x1b

    return v0

    .line 1998
    :pswitch_2e
    const/16 v0, 0x1a

    return v0

    .line 1996
    :pswitch_2f
    const/16 v0, 0x19

    return v0

    .line 1994
    :pswitch_30
    const/16 v0, 0x18

    return v0

    .line 1992
    :pswitch_31
    const/16 v0, 0x17

    return v0

    .line 1990
    :pswitch_32
    const/16 v0, 0x16

    return v0

    .line 1988
    :pswitch_33
    const/16 v0, 0x15

    return v0

    .line 1986
    :pswitch_34
    const/16 v0, 0x14

    return v0

    .line 1984
    :pswitch_35
    const/16 v0, 0x13

    return v0

    .line 1982
    :pswitch_36
    const/16 v0, 0x12

    return v0

    .line 1980
    :pswitch_37
    const/16 v0, 0x11

    return v0

    .line 1978
    :pswitch_38
    const/16 v0, 0x10

    return v0

    .line 1976
    :pswitch_39
    const/16 v0, 0xf

    return v0

    .line 1974
    :pswitch_3a
    const/16 v0, 0xe

    return v0

    .line 1972
    :pswitch_3b
    const/16 v0, 0xd

    return v0

    .line 1970
    :pswitch_3c
    const/16 v0, 0xc

    return v0

    .line 1968
    :pswitch_3d
    const/16 v0, 0xb

    return v0

    .line 1966
    :pswitch_3e
    const/16 v0, 0xa

    return v0

    .line 1964
    :pswitch_3f
    const/16 v0, 0x9

    return v0

    .line 1962
    :pswitch_40
    const/16 v0, 0x8

    return v0

    .line 1960
    :pswitch_41
    const/4 v0, 0x7

    return v0

    .line 1958
    :pswitch_42
    const/4 v0, 0x6

    return v0

    .line 1956
    :pswitch_43
    const/4 v0, 0x5

    return v0

    .line 1954
    :pswitch_44
    const/4 v0, 0x4

    return v0

    .line 1952
    :pswitch_45
    const/4 v0, 0x3

    return v0

    .line 1950
    :pswitch_46
    const/4 v0, 0x2

    return v0

    .line 1948
    :pswitch_47
    const/4 v0, 0x1

    return v0

    .line 1946
    :pswitch_48
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static configInfoItemToHal(I)I
    .locals 1
    .param p0, "item"    # I

    .line 1791
    packed-switch p0, :pswitch_data_0

    .line 1939
    const/16 v0, 0x49

    return v0

    .line 1935
    :pswitch_0
    const/16 v0, 0x48

    return v0

    .line 1933
    :pswitch_1
    const/16 v0, 0x47

    return v0

    .line 1937
    :pswitch_2
    const/16 v0, 0x46

    return v0

    .line 1931
    :pswitch_3
    const/16 v0, 0x45

    return v0

    .line 1929
    :pswitch_4
    const/16 v0, 0x44

    return v0

    .line 1927
    :pswitch_5
    const/16 v0, 0x43

    return v0

    .line 1925
    :pswitch_6
    const/16 v0, 0x42

    return v0

    .line 1923
    :pswitch_7
    const/16 v0, 0x41

    return v0

    .line 1921
    :pswitch_8
    const/16 v0, 0x40

    return v0

    .line 1919
    :pswitch_9
    const/16 v0, 0x3f

    return v0

    .line 1917
    :pswitch_a
    const/16 v0, 0x3e

    return v0

    .line 1915
    :pswitch_b
    const/16 v0, 0x3d

    return v0

    .line 1913
    :pswitch_c
    const/16 v0, 0x3c

    return v0

    .line 1911
    :pswitch_d
    const/16 v0, 0x3b

    return v0

    .line 1909
    :pswitch_e
    const/16 v0, 0x3a

    return v0

    .line 1907
    :pswitch_f
    const/16 v0, 0x39

    return v0

    .line 1905
    :pswitch_10
    const/16 v0, 0x38

    return v0

    .line 1903
    :pswitch_11
    const/16 v0, 0x37

    return v0

    .line 1901
    :pswitch_12
    const/16 v0, 0x36

    return v0

    .line 1899
    :pswitch_13
    const/16 v0, 0x35

    return v0

    .line 1897
    :pswitch_14
    const/16 v0, 0x34

    return v0

    .line 1895
    :pswitch_15
    const/16 v0, 0x33

    return v0

    .line 1893
    :pswitch_16
    const/16 v0, 0x32

    return v0

    .line 1891
    :pswitch_17
    const/16 v0, 0x31

    return v0

    .line 1889
    :pswitch_18
    const/16 v0, 0x30

    return v0

    .line 1887
    :pswitch_19
    const/16 v0, 0x2f

    return v0

    .line 1885
    :pswitch_1a
    const/16 v0, 0x2e

    return v0

    .line 1883
    :pswitch_1b
    const/16 v0, 0x2d

    return v0

    .line 1881
    :pswitch_1c
    const/16 v0, 0x2c

    return v0

    .line 1879
    :pswitch_1d
    const/16 v0, 0x2b

    return v0

    .line 1877
    :pswitch_1e
    const/16 v0, 0x2a

    return v0

    .line 1875
    :pswitch_1f
    const/16 v0, 0x29

    return v0

    .line 1873
    :pswitch_20
    const/16 v0, 0x28

    return v0

    .line 1871
    :pswitch_21
    const/16 v0, 0x27

    return v0

    .line 1869
    :pswitch_22
    const/16 v0, 0x26

    return v0

    .line 1867
    :pswitch_23
    const/16 v0, 0x25

    return v0

    .line 1865
    :pswitch_24
    const/16 v0, 0x24

    return v0

    .line 1863
    :pswitch_25
    const/16 v0, 0x23

    return v0

    .line 1861
    :pswitch_26
    const/16 v0, 0x22

    return v0

    .line 1859
    :pswitch_27
    const/16 v0, 0x21

    return v0

    .line 1857
    :pswitch_28
    const/16 v0, 0x20

    return v0

    .line 1855
    :pswitch_29
    const/16 v0, 0x1f

    return v0

    .line 1853
    :pswitch_2a
    const/16 v0, 0x1e

    return v0

    .line 1851
    :pswitch_2b
    const/16 v0, 0x1d

    return v0

    .line 1849
    :pswitch_2c
    const/16 v0, 0x1c

    return v0

    .line 1847
    :pswitch_2d
    const/16 v0, 0x1b

    return v0

    .line 1845
    :pswitch_2e
    const/16 v0, 0x1a

    return v0

    .line 1843
    :pswitch_2f
    const/16 v0, 0x19

    return v0

    .line 1841
    :pswitch_30
    const/16 v0, 0x18

    return v0

    .line 1839
    :pswitch_31
    const/16 v0, 0x17

    return v0

    .line 1837
    :pswitch_32
    const/16 v0, 0x16

    return v0

    .line 1835
    :pswitch_33
    const/16 v0, 0x15

    return v0

    .line 1833
    :pswitch_34
    const/16 v0, 0x14

    return v0

    .line 1831
    :pswitch_35
    const/16 v0, 0x13

    return v0

    .line 1829
    :pswitch_36
    const/16 v0, 0x12

    return v0

    .line 1827
    :pswitch_37
    const/16 v0, 0x11

    return v0

    .line 1825
    :pswitch_38
    const/16 v0, 0x10

    return v0

    .line 1823
    :pswitch_39
    const/16 v0, 0xf

    return v0

    .line 1821
    :pswitch_3a
    const/16 v0, 0xe

    return v0

    .line 1819
    :pswitch_3b
    const/16 v0, 0xd

    return v0

    .line 1817
    :pswitch_3c
    const/16 v0, 0xc

    return v0

    .line 1815
    :pswitch_3d
    const/16 v0, 0xb

    return v0

    .line 1813
    :pswitch_3e
    const/16 v0, 0xa

    return v0

    .line 1811
    :pswitch_3f
    const/16 v0, 0x9

    return v0

    .line 1809
    :pswitch_40
    const/16 v0, 0x8

    return v0

    .line 1807
    :pswitch_41
    const/4 v0, 0x7

    return v0

    .line 1805
    :pswitch_42
    const/4 v0, 0x6

    return v0

    .line 1803
    :pswitch_43
    const/4 v0, 0x5

    return v0

    .line 1801
    :pswitch_44
    const/4 v0, 0x4

    return v0

    .line 1799
    :pswitch_45
    const/4 v0, 0x3

    return v0

    .line 1797
    :pswitch_46
    const/4 v0, 0x2

    return v0

    .line 1795
    :pswitch_47
    const/4 v0, 0x1

    return v0

    .line 1793
    :pswitch_48
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;)[",
            "Lorg/codeaurora/ims/ServiceStatus;"
        }
    .end annotation

    .line 560
    .local p0, "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    const/4 v0, 0x0

    .line 561
    .local v0, "toList":[Lorg/codeaurora/ims/ServiceStatus;
    if-eqz p0, :cond_8

    .line 562
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 563
    .local v1, "listLen":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Num of SrvUpdates = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 564
    new-array v0, v1, [Lorg/codeaurora/ims/ServiceStatus;

    .line 565
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_8

    .line 566
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    .line 567
    .local v3, "fromInfo":Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    if-eqz v3, :cond_7

    .line 568
    new-instance v4, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    aput-object v4, v0, v2

    .line 569
    iget-boolean v4, v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->hasIsValid:Z

    if-eqz v4, :cond_0

    .line 570
    aget-object v4, v0, v2

    iget-boolean v5, v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->isValid:Z

    iput-boolean v5, v4, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 572
    :cond_0
    aget-object v4, v0, v2

    iget v5, v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->callType:I

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->callTypeFromHal(I)I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 573
    iget-object v4, v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-lez v4, :cond_1

    .line 574
    aget-object v4, v0, v2

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->unpackAccTechStatus(Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-result-object v7

    iput-object v7, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    goto :goto_1

    .line 576
    :cond_1
    aget-object v4, v0, v2

    new-array v7, v6, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v7, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 577
    aget-object v4, v0, v2

    iget-object v4, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v7, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v7}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    const/4 v8, 0x0

    aput-object v7, v4, v8

    .line 578
    aget-object v4, v0, v2

    iget-object v4, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v8

    .line 579
    .local v4, "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/16 v7, 0xe

    iput v7, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 581
    iget v7, v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->status:I

    if-eq v7, v5, :cond_2

    .line 582
    iget v7, v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->status:I

    invoke-static {v7}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeFromHal(I)I

    move-result v7

    iput v7, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 584
    :cond_2
    iget v7, v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->restrictCause:I

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_3

    .line 585
    iget v7, v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->restrictCause:I

    iput v7, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 588
    .end local v4    # "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    :cond_3
    :goto_1
    iget v4, v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->status:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_4

    iget v4, v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->restrictCause:I

    if-eqz v4, :cond_4

    .line 590
    const-string v4, "Partially Enabled Status due to Restrict Cause"

    invoke-static {v4}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 591
    aget-object v4, v0, v2

    iput v6, v4, Lorg/codeaurora/ims/ServiceStatus;->status:I

    goto :goto_2

    .line 593
    :cond_4
    iget v4, v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->status:I

    if-eq v4, v5, :cond_5

    .line 594
    aget-object v4, v0, v2

    iget v5, v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->status:I

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeFromHal(I)I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 598
    :cond_5
    :goto_2
    aget-object v4, v0, v2

    iget v5, v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->rttMode:I

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->rttModeFromHal(I)I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    .line 599
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RTT: copySrvStatusList rtt mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->rttMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 600
    iget-object v4, v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 601
    .local v4, "userdataLen":I
    if-lez v4, :cond_6

    .line 602
    aget-object v5, v0, v2

    new-array v6, v4, [B

    iput-object v6, v5, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 603
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v4, :cond_6

    .line 604
    aget-object v6, v0, v2

    iget-object v6, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    iget-object v7, v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    aput-byte v7, v6, v5

    .line 603
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 607
    .end local v4    # "userdataLen":I
    .end local v5    # "j":I
    :cond_6
    goto :goto_4

    .line 608
    :cond_7
    const-string v4, "Null service status in list"

    invoke-static {v4}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 565
    .end local v3    # "fromInfo":Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 612
    .end local v1    # "listLen":I
    .end local v2    # "i":I
    :cond_8
    return-object v0
.end method

.method public static crsDataFromHal(Lvendor/qti/hardware/radio/ims/V1_7/CrsData;Lorg/codeaurora/ims/CrsData;)V
    .locals 1
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_7/CrsData;
    .param p1, "to"    # Lorg/codeaurora/ims/CrsData;

    .line 2530
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CrsData;->type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->crsTypeFromHal(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CrsData;->setCrsType(I)V

    .line 2531
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CrsData;->originalCallType:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeFromHal(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CrsData;->setOriginalCallType(I)V

    .line 2532
    return-void
.end method

.method public static crsTypeFromHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2513
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2524
    return v0

    .line 2521
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 2519
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 2517
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 2515
    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static ectTypeToHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2296
    packed-switch p0, :pswitch_data_0

    .line 2304
    const/4 v0, 0x3

    return v0

    .line 2302
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2300
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2298
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static extraTypeFromHal(I)I
    .locals 1
    .param p0, "extraHo"    # I

    .line 1297
    packed-switch p0, :pswitch_data_0

    .line 1301
    const/4 v0, -0x1

    return v0

    .line 1299
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static facilityTypeToHal(I)I
    .locals 1
    .param p0, "facilityType"    # I

    .line 1540
    packed-switch p0, :pswitch_data_0

    .line 1566
    const/16 v0, 0xc

    return v0

    .line 1564
    :pswitch_0
    const/16 v0, 0xb

    return v0

    .line 1562
    :pswitch_1
    const/16 v0, 0xa

    return v0

    .line 1560
    :pswitch_2
    const/16 v0, 0x9

    return v0

    .line 1558
    :pswitch_3
    const/16 v0, 0x8

    return v0

    .line 1556
    :pswitch_4
    const/4 v0, 0x7

    return v0

    .line 1554
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 1552
    :pswitch_6
    const/4 v0, 0x5

    return v0

    .line 1550
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 1548
    :pswitch_8
    const/4 v0, 0x3

    return v0

    .line 1546
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 1544
    :pswitch_a
    const/4 v0, 0x1

    return v0

    .line 1542
    :pswitch_b
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static fromCoordinate2D(Lorg/codeaurora/ims/Coordinate2D;)Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;
    .locals 2
    .param p0, "from"    # Lorg/codeaurora/ims/Coordinate2D;

    .line 3045
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;-><init>()V

    .line 3047
    .local v0, "coordinate2D":Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;
    invoke-virtual {p0}, Lorg/codeaurora/ims/Coordinate2D;->getX()I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;->x:I

    .line 3048
    invoke-virtual {p0}, Lorg/codeaurora/ims/Coordinate2D;->getY()I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;->y:I

    .line 3050
    return-object v0
.end method

.method public static fromVosActionInfo(Lorg/codeaurora/ims/VosActionInfo;)Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;
    .locals 3
    .param p0, "from"    # Lorg/codeaurora/ims/VosActionInfo;

    .line 2998
    if-nez p0, :cond_0

    .line 2999
    const/4 v0, 0x0

    return-object v0

    .line 3002
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;-><init>()V

    .line 3004
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosActionInfo;->getVosMoveInfo()Lorg/codeaurora/ims/VosMoveInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3005
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosMoveInfo:Z

    .line 3006
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosActionInfo;->getVosMoveInfo()Lorg/codeaurora/ims/VosMoveInfo;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->fromVosMoveInfo(Lorg/codeaurora/ims/VosMoveInfo;)Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosMoveInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;

    .line 3009
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosActionInfo;->getVosTouchInfo()Lorg/codeaurora/ims/VosTouchInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3010
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosTouchInfo:Z

    .line 3011
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosActionInfo;->getVosTouchInfo()Lorg/codeaurora/ims/VosTouchInfo;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->fromVosTouchInfo(Lorg/codeaurora/ims/VosTouchInfo;)Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosTouchInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

    .line 3014
    :cond_2
    return-object v0
.end method

.method private static fromVosMoveInfo(Lorg/codeaurora/ims/VosMoveInfo;)Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;
    .locals 2
    .param p0, "from"    # Lorg/codeaurora/ims/VosMoveInfo;

    .line 3019
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;-><init>()V

    .line 3021
    .local v0, "vosMoveInfo":Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosMoveInfo;->getStart()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3022
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosMoveInfo;->getStart()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->fromCoordinate2D(Lorg/codeaurora/ims/Coordinate2D;)Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;->start:Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    .line 3024
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosMoveInfo;->getEnd()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3025
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosMoveInfo;->getEnd()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->fromCoordinate2D(Lorg/codeaurora/ims/Coordinate2D;)Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;->end:Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    .line 3028
    :cond_1
    return-object v0
.end method

.method private static fromVosTouchInfo(Lorg/codeaurora/ims/VosTouchInfo;)Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;
    .locals 2
    .param p0, "from"    # Lorg/codeaurora/ims/VosTouchInfo;

    .line 3033
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;-><init>()V

    .line 3035
    .local v0, "vosTouchInfo":Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosTouchInfo;->getTouch()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3036
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosTouchInfo;->getTouch()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->fromCoordinate2D(Lorg/codeaurora/ims/Coordinate2D;)Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touch:Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    .line 3038
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosTouchInfo;->getTouchDuration()I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touchDuration:I

    .line 3040
    return-object v0
.end method

.method public static geolocationIndicationFromHal(DD)Lorg/codeaurora/ims/GeoLocationInfo;
    .locals 1
    .param p0, "lat"    # D
    .param p2, "lon"    # D

    .line 2312
    new-instance v0, Lorg/codeaurora/ims/GeoLocationInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/GeoLocationInfo;-><init>(DD)V

    return-object v0
.end method

.method public static getCallDetails(Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;)Lorg/codeaurora/ims/CallDetails;
    .locals 4
    .param p0, "inCallDetails"    # Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;

    .line 439
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    .line 441
    .local v0, "outCallDetails":Lorg/codeaurora/ims/CallDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 442
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 445
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callDomain:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 446
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callDomain:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callDomainFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 449
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callSubstate:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 450
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callSubstate:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->toCallSubstateConstants(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 454
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->mediaId:I

    if-eq v1, v2, :cond_3

    .line 455
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->mediaId:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 458
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 459
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 461
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 462
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 464
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->causeCode:I

    if-eq v1, v2, :cond_4

    .line 465
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->causeCode:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 468
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->rttMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 469
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->rttMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->rttModeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 472
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 473
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 476
    :cond_6
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->isVosSupported:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/CallDetails;->setVosSupport(Z)V

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call Details = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 480
    return-object v0
.end method

.method public static getCallFailCauseForImsReason(I)I
    .locals 3
    .param p0, "imsReason"    # I

    .line 1026
    sget-object v0, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsReason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    packed-switch p0, :pswitch_data_0

    .line 1043
    :pswitch_0
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->getCallFailCauseForImsReason(I)I

    move-result v0

    .local v0, "failCause":I
    goto :goto_0

    .line 1040
    .end local v0    # "failCause":I
    :pswitch_1
    const/16 v0, 0x1f8

    .line 1041
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 1037
    .end local v0    # "failCause":I
    :pswitch_2
    const/16 v0, 0x1f7

    .line 1038
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 1031
    .end local v0    # "failCause":I
    :pswitch_3
    const/16 v0, 0x1f6

    .line 1032
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 1034
    .end local v0    # "failCause":I
    :pswitch_4
    const/16 v0, 0x1f5

    .line 1035
    .restart local v0    # "failCause":I
    nop

    .line 1045
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getCallForwardReasonFromSsData(I)I
    .locals 1
    .param p0, "reason"    # I

    .line 2654
    packed-switch p0, :pswitch_data_0

    .line 2670
    const/4 v0, -0x1

    return v0

    .line 2666
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2664
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2662
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2660
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2658
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2656
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getHidlAddressInfo(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .locals 5
    .param p0, "lat"    # D
    .param p2, "lon"    # D
    .param p4, "address"    # Landroid/location/Address;

    .line 2773
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;-><init>()V

    .line 2775
    .local v0, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    if-nez p4, :cond_0

    .line 2776
    sget-object v1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    const-string v2, "Null Address!"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2777
    return-object v0

    .line 2780
    :cond_0
    invoke-virtual {p4}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 2781
    .local v1, "info":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2782
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->city:Ljava/lang/String;

    .line 2784
    :cond_1
    invoke-virtual {p4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    .line 2785
    if-eqz v1, :cond_2

    .line 2786
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->state:Ljava/lang/String;

    .line 2788
    :cond_2
    invoke-virtual {p4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    .line 2789
    if-eqz v1, :cond_3

    .line 2790
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->country:Ljava/lang/String;

    .line 2792
    :cond_3
    invoke-virtual {p4}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    .line 2793
    if-eqz v1, :cond_4

    .line 2794
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->postalCode:Ljava/lang/String;

    .line 2796
    :cond_4
    invoke-virtual {p4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 2797
    if-eqz v1, :cond_5

    .line 2798
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->countryCode:Ljava/lang/String;

    .line 2800
    :cond_5
    invoke-virtual {p4}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    .line 2801
    if-eqz v1, :cond_6

    .line 2802
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->street:Ljava/lang/String;

    .line 2804
    :cond_6
    invoke-virtual {p4}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v1

    .line 2805
    if-eqz v1, :cond_7

    .line 2806
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->houseNumber:Ljava/lang/String;

    .line 2808
    :cond_7
    sget-object v2, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",houseNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2809
    return-object v0
.end method

.method private static getImsReasonForCallFailCause(I)I
    .locals 2
    .param p0, "failCause"    # I

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call fail cause= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 326
    const/16 v0, 0x150

    const/16 v1, 0x152

    sparse-switch p0, :sswitch_data_0

    .line 433
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV12;->getImsReasonForCallFailCause(I)I

    move-result v0

    return v0

    .line 370
    :sswitch_0
    const/16 v0, 0x5ea

    return v0

    .line 420
    :sswitch_1
    const/16 v0, 0xfb

    return v0

    .line 418
    :sswitch_2
    const/16 v0, 0xfa

    return v0

    .line 424
    :sswitch_3
    const/16 v0, 0xf9

    return v0

    .line 422
    :sswitch_4
    const/16 v0, 0xf8

    return v0

    .line 416
    :sswitch_5
    const/16 v0, 0xf7

    return v0

    .line 380
    :sswitch_6
    const/16 v0, 0x194

    return v0

    .line 378
    :sswitch_7
    const/16 v0, 0x193

    return v0

    .line 376
    :sswitch_8
    const/16 v0, 0x192

    return v0

    .line 374
    :sswitch_9
    const/16 v0, 0x191

    return v0

    .line 367
    :sswitch_a
    const/16 v0, 0x16a

    return v0

    .line 365
    :sswitch_b
    const/16 v0, 0x169

    return v0

    .line 363
    :sswitch_c
    const/16 v0, 0x161

    return v0

    .line 361
    :sswitch_d
    const/16 v0, 0x160

    return v0

    .line 359
    :sswitch_e
    const/16 v0, 0x162

    return v0

    .line 353
    :sswitch_f
    const/16 v0, 0x15f

    return v0

    .line 351
    :sswitch_10
    const/16 v0, 0x155

    return v0

    .line 349
    :sswitch_11
    const/16 v0, 0x154

    return v0

    .line 347
    :sswitch_12
    const/16 v0, 0x153

    return v0

    .line 345
    :sswitch_13
    return v1

    .line 343
    :sswitch_14
    const/16 v0, 0x151

    return v0

    .line 341
    :sswitch_15
    return v0

    .line 339
    :sswitch_16
    const/16 v0, 0x14f

    return v0

    .line 337
    :sswitch_17
    const/16 v0, 0x14e

    return v0

    .line 335
    :sswitch_18
    const/16 v0, 0x14d

    return v0

    .line 333
    :sswitch_19
    const/16 v0, 0x14c

    return v0

    .line 331
    :sswitch_1a
    const/16 v0, 0x14b

    return v0

    .line 329
    :sswitch_1b
    const/16 v0, 0x141

    return v0

    .line 408
    :sswitch_1c
    const/16 v0, 0x5e8

    return v0

    .line 406
    :sswitch_1d
    const/16 v0, 0x3f8

    return v0

    .line 404
    :sswitch_1e
    const/16 v0, 0x3f7

    return v0

    .line 388
    :sswitch_1f
    const/16 v0, 0x3f6

    return v0

    .line 386
    :sswitch_20
    return v0

    .line 394
    :sswitch_21
    const/16 v0, 0x92

    return v0

    .line 398
    :sswitch_22
    const/16 v0, 0x1f9

    return v0

    .line 396
    :sswitch_23
    const/16 v0, 0x95

    return v0

    .line 402
    :sswitch_24
    const/16 v0, 0x16c

    return v0

    .line 400
    :sswitch_25
    const/16 v0, 0x16b

    return v0

    .line 414
    :sswitch_26
    const/16 v0, 0xf6

    return v0

    .line 410
    :sswitch_27
    const/16 v0, 0xf5

    return v0

    .line 412
    :sswitch_28
    const/16 v0, 0xf4

    return v0

    .line 392
    :sswitch_29
    const/16 v0, 0xf3

    return v0

    .line 390
    :sswitch_2a
    const/16 v0, 0xf1

    return v0

    .line 384
    :sswitch_2b
    return v1

    .line 382
    :sswitch_2c
    const/16 v0, 0x1f5

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2c
        0x2 -> :sswitch_2b
        0x7 -> :sswitch_2a
        0x8 -> :sswitch_29
        0x9 -> :sswitch_28
        0xa -> :sswitch_27
        0xb -> :sswitch_26
        0xc -> :sswitch_25
        0xd -> :sswitch_24
        0xe -> :sswitch_23
        0x1f7 -> :sswitch_22
        0x1f9 -> :sswitch_21
        0x1fa -> :sswitch_20
        0x1fe -> :sswitch_1f
        0x1ff -> :sswitch_1e
        0x200 -> :sswitch_1d
        0x201 -> :sswitch_1c
        0x202 -> :sswitch_1b
        0x203 -> :sswitch_1a
        0x204 -> :sswitch_19
        0x205 -> :sswitch_18
        0x206 -> :sswitch_17
        0x207 -> :sswitch_16
        0x208 -> :sswitch_15
        0x209 -> :sswitch_14
        0x20a -> :sswitch_13
        0x20b -> :sswitch_12
        0x20c -> :sswitch_11
        0x20d -> :sswitch_10
        0x20e -> :sswitch_f
        0x20f -> :sswitch_e
        0x210 -> :sswitch_e
        0x211 -> :sswitch_d
        0x212 -> :sswitch_c
        0x213 -> :sswitch_e
        0x214 -> :sswitch_e
        0x215 -> :sswitch_e
        0x216 -> :sswitch_b
        0x217 -> :sswitch_a
        0x218 -> :sswitch_9
        0x219 -> :sswitch_8
        0x21a -> :sswitch_7
        0x21b -> :sswitch_6
        0x21f -> :sswitch_5
        0x220 -> :sswitch_4
        0x221 -> :sswitch_3
        0x222 -> :sswitch_2
        0x223 -> :sswitch_1
        0x226 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getIpPresentation(I)I
    .locals 1
    .param p0, "clirMode"    # I

    .line 141
    packed-switch p0, :pswitch_data_0

    .line 148
    const/4 v0, 0x3

    return v0

    .line 143
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 146
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getIsConferenceUri(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 3
    .param p0, "callDetails"    # Lorg/codeaurora/ims/CallDetails;

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "isConferenceUri":Z
    if-eqz p0, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v2, "isConferenceUri"

    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 168
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private static getSmsPdu(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 484
    .local p0, "hidlPdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 486
    .local v0, "pdu":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 487
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method protected static handleSrvStatus(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/ServiceStatus;",
            ">;"
        }
    .end annotation

    .line 1215
    .local p0, "inList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    if-nez p0, :cond_0

    .line 1216
    const-string v0, "inList is null."

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1217
    const/4 v0, 0x0

    return-object v0

    .line 1220
    :cond_0
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v0

    .line 1221
    .local v0, "outList":[Lorg/codeaurora/ims/ServiceStatus;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1223
    .local v1, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    return-object v1
.end method

.method public static handoverFromHal(Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;)Lorg/codeaurora/ims/HoInfo;
    .locals 3
    .param p0, "inHandover"    # Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;

    .line 1228
    if-nez p0, :cond_0

    .line 1229
    const/4 v0, 0x0

    return-object v0

    .line 1232
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/HoInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/HoInfo;-><init>()V

    .line 1234
    .local v0, "outHandover":Lorg/codeaurora/ims/HoInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->type:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 1235
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->handoverTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setType(I)V

    .line 1238
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->srcTech:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_2

    .line 1239
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->srcTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setSrcTech(I)V

    .line 1242
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->targetTech:I

    if-eq v1, v2, :cond_3

    .line 1243
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->targetTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setTargetTech(I)V

    .line 1246
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->hasHoExtra:Z

    if-eqz v1, :cond_4

    .line 1247
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/V1_0/Extra;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/Extra;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->extraTypeFromHal(I)I

    move-result v1

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/V1_0/Extra;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/Extra;->extraInfo:Ljava/util/ArrayList;

    .line 1248
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtils;->toByteArray(Ljava/util/ArrayList;)[B

    move-result-object v2

    .line 1247
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/HoInfo;->setExtra(I[B)V

    .line 1251
    :cond_4
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setErrorCode(Ljava/lang/String;)V

    .line 1252
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setErrorMessage(Ljava/lang/String;)V

    .line 1254
    return-object v0
.end method

.method public static handoverTypeFromHal(I)I
    .locals 1
    .param p0, "inType"    # I

    .line 1258
    packed-switch p0, :pswitch_data_0

    .line 1272
    const/4 v0, -0x1

    return v0

    .line 1268
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 1270
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1266
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1264
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1262
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 1260
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static imsSmsDeliverStatusToHidl(I)I
    .locals 1
    .param p0, "status"    # I

    .line 1338
    packed-switch p0, :pswitch_data_0

    .line 1344
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->imsSmsDeliverStatusToHidl(I)I

    move-result v0

    return v0

    .line 1342
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1340
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static imsSmsResponsefromHidl(III)Lorg/codeaurora/ims/sms/SmsResponse;
    .locals 3
    .param p0, "messageRef"    # I
    .param p1, "smsStatusResult"    # I
    .param p2, "hidlReason"    # I

    .line 536
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->mapHidlToFrameworkResponseResult(I)I

    move-result v0

    .line 537
    .local v0, "statusResult":I
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->mapHidlToFrameworkResponseReason(I)I

    move-result v1

    .line 539
    .local v1, "reason":I
    new-instance v2, Lorg/codeaurora/ims/sms/SmsResponse;

    invoke-direct {v2, p0, v0, v1}, Lorg/codeaurora/ims/sms/SmsResponse;-><init>(III)V

    return-object v2
.end method

.method public static imsSmsStatusReportStatusToHidl(I)I
    .locals 1
    .param p0, "report"    # I

    .line 1349
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 1355
    return v0

    .line 1353
    :pswitch_0
    return v0

    .line 1351
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static imsSubconfigFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;
    .locals 3
    .param p0, "subConfigInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    .line 2317
    if-nez p0, :cond_0

    .line 2318
    const/4 v0, 0x0

    return-object v0

    .line 2321
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsSubConfigDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;-><init>()V

    .line 2322
    .local v0, "subConfig":Lorg/codeaurora/ims/ImsSubConfigDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->simultStackCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2323
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->simultStackCount:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSubConfigDetails;->setSimultStackCount(I)V

    .line 2326
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->imsStackEnabled:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2327
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->imsStackEnabled:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSubConfigDetails;->addImsStackEnabled(Z)V

    .line 2326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2330
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static incomingSmsfromHidl(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)Lorg/codeaurora/ims/sms/IncomingSms;
    .locals 4
    .param p0, "imsSms"    # Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;

    .line 555
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->verstat:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->mapHidlToFrameworkVerstat(I)I

    move-result v0

    .line 556
    .local v0, "verstat":I
    new-instance v1, Lorg/codeaurora/ims/sms/IncomingSms;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->format:Ljava/lang/String;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->pdu:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->getSmsPdu(Ljava/util/ArrayList;)[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/codeaurora/ims/sms/IncomingSms;-><init>(Ljava/lang/String;[BI)V

    return-object v1
.end method

.method public static ipPresentationFromHal(I)I
    .locals 1
    .param p0, "presentation"    # I

    .line 1613
    packed-switch p0, :pswitch_data_0

    .line 1620
    const/4 v0, 0x2

    return v0

    .line 1617
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1615
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ipPresentationToHal(I)I
    .locals 1
    .param p0, "presentation"    # I

    .line 853
    packed-switch p0, :pswitch_data_0

    .line 861
    const/4 v0, 0x3

    return v0

    .line 859
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 857
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 855
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isTirOverwriteAllowed(I)Z
    .locals 1
    .param p0, "tirMode"    # I

    .line 2884
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 1210
    const-class v0, Lorg/codeaurora/ims/ImsRadioUtils;

    invoke-static {v0, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1211
    return-void
.end method

.method public static mapCapabilityToSrvType(I)I
    .locals 1
    .param p0, "capability"    # I

    .line 1078
    sparse-switch p0, :sswitch_data_0

    .line 1088
    const/16 v0, 0xa

    return v0

    .line 1086
    :sswitch_0
    const/4 v0, 0x5

    return v0

    .line 1084
    :sswitch_1
    const/16 v0, 0x19

    return v0

    .line 1082
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 1080
    :sswitch_3
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static mapHidlToFrameworkResponseReason(I)I
    .locals 1
    .param p0, "hidlReason"    # I

    .line 512
    packed-switch p0, :pswitch_data_0

    .line 530
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapHidlToFrameworkResponseReason(I)I

    move-result v0

    return v0

    .line 528
    :pswitch_0
    const/16 v0, 0x8

    return v0

    .line 526
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 524
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 522
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 520
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 518
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 516
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 514
    :pswitch_7
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mapHidlToFrameworkResponseResult(I)I
    .locals 1
    .param p0, "hidlResult"    # I

    .line 497
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    .line 507
    return v0

    .line 505
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 503
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 501
    :pswitch_2
    return v0

    .line 499
    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static mapHidlToFrameworkVerstat(I)I
    .locals 1
    .param p0, "verstat"    # I

    .line 543
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 551
    return v0

    .line 549
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 547
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 545
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mapRadioTechToHal(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .line 1115
    packed-switch p0, :pswitch_data_0

    .line 1161
    const/16 v0, 0x15

    return v0

    .line 1159
    :pswitch_0
    const/16 v0, 0x16

    return v0

    .line 1157
    :pswitch_1
    const/16 v0, 0x14

    return v0

    .line 1155
    :pswitch_2
    const/16 v0, 0x13

    return v0

    .line 1153
    :pswitch_3
    const/16 v0, 0x12

    return v0

    .line 1151
    :pswitch_4
    const/16 v0, 0x11

    return v0

    .line 1149
    :pswitch_5
    const/16 v0, 0x10

    return v0

    .line 1147
    :pswitch_6
    const/16 v0, 0xf

    return v0

    .line 1145
    :pswitch_7
    const/16 v0, 0xe

    return v0

    .line 1143
    :pswitch_8
    const/16 v0, 0xd

    return v0

    .line 1141
    :pswitch_9
    const/16 v0, 0xc

    return v0

    .line 1139
    :pswitch_a
    const/16 v0, 0xb

    return v0

    .line 1137
    :pswitch_b
    const/16 v0, 0xa

    return v0

    .line 1135
    :pswitch_c
    const/16 v0, 0x9

    return v0

    .line 1133
    :pswitch_d
    const/16 v0, 0x8

    return v0

    .line 1131
    :pswitch_e
    const/4 v0, 0x7

    return v0

    .line 1129
    :pswitch_f
    const/4 v0, 0x6

    return v0

    .line 1127
    :pswitch_10
    const/4 v0, 0x5

    return v0

    .line 1125
    :pswitch_11
    const/4 v0, 0x4

    return v0

    .line 1123
    :pswitch_12
    const/4 v0, 0x3

    return v0

    .line 1121
    :pswitch_13
    const/4 v0, 0x2

    return v0

    .line 1119
    :pswitch_14
    const/4 v0, 0x1

    return v0

    .line 1117
    :pswitch_15
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mapRadioTechToHidlRadioTech(I)I
    .locals 1
    .param p0, "rat"    # I

    .line 1093
    packed-switch p0, :pswitch_data_0

    .line 1099
    const/4 v0, 0x0

    return v0

    .line 1097
    :pswitch_0
    const/16 v0, 0x13

    return v0

    .line 1095
    :pswitch_1
    const/16 v0, 0xe

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mapSipErrorFromCallFailCause(I)I
    .locals 1
    .param p0, "callFailCause"    # I

    .line 2949
    packed-switch p0, :pswitch_data_0

    .line 2971
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2969
    :pswitch_1
    const/16 v0, 0x244

    return v0

    .line 2967
    :pswitch_2
    const/16 v0, 0x201

    return v0

    .line 2965
    :pswitch_3
    const/16 v0, 0x1f9

    return v0

    .line 2963
    :pswitch_4
    const/16 v0, 0x1f7

    return v0

    .line 2961
    :pswitch_5
    const/16 v0, 0x1f6

    return v0

    .line 2959
    :pswitch_6
    const/16 v0, 0x1f5

    return v0

    .line 2957
    :pswitch_7
    const/16 v0, 0x1f4

    return v0

    .line 2955
    :pswitch_8
    const/16 v0, 0x1e0

    return v0

    .line 2953
    :pswitch_9
    const/16 v0, 0x198

    return v0

    .line 2951
    :pswitch_a
    const/16 v0, 0x193

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x204
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static mapValueToServiceStatus(I)I
    .locals 1
    .param p0, "value"    # I

    .line 1104
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1110
    return v0

    .line 1106
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1108
    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static messageDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;)Lorg/codeaurora/ims/Mwi$MwiMessageDetails;
    .locals 3
    .param p0, "details"    # Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;

    .line 2243
    if-nez p0, :cond_0

    .line 2244
    const/4 v0, 0x0

    return-object v0

    .line 2247
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;-><init>()V

    .line 2249
    .local v0, "mwiMessageDetails":Lorg/codeaurora/ims/Mwi$MwiMessageDetails;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->toAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2250
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->toAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mToAddress:Ljava/lang/String;

    .line 2253
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->fromAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2254
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->fromAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mFromAddress:Ljava/lang/String;

    .line 2257
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->subject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2258
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->subject:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mSubject:Ljava/lang/String;

    .line 2261
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->date:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2262
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->date:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mDate:Ljava/lang/String;

    .line 2265
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->priority:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    .line 2266
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->priority:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->messagePriorityFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mPriority:I

    .line 2269
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2270
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->id:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageId:Ljava/lang/String;

    .line 2273
    :cond_6
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->type:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_7

    .line 2274
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->messageTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageType:I

    .line 2276
    :cond_7
    return-object v0
.end method

.method public static messagePriorityFromHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2173
    packed-switch p0, :pswitch_data_0

    .line 2182
    const/4 v0, -0x1

    return v0

    .line 2179
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2177
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2175
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static messageSummaryFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;)Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    .locals 3
    .param p0, "summary"    # Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;

    .line 2214
    if-nez p0, :cond_0

    .line 2215
    const/4 v0, 0x0

    return-object v0

    .line 2218
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;-><init>()V

    .line 2220
    .local v0, "mwiMessageSummary":Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->type:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    .line 2221
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->messageTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    .line 2224
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newMessageCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 2225
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    .line 2228
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldMessageCount:I

    if-eq v1, v2, :cond_3

    .line 2229
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldMessage:I

    .line 2232
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newUrgentMessageCount:I

    if-eq v1, v2, :cond_4

    .line 2233
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newUrgentMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    .line 2236
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldUrgentMessageCount:I

    if-eq v1, v2, :cond_5

    .line 2237
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldUrgentMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldUrgent:I

    .line 2239
    :cond_5
    return-object v0
.end method

.method public static messageTypeFromHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2153
    packed-switch p0, :pswitch_data_0

    .line 2168
    const/4 v0, -0x1

    return v0

    .line 2165
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2163
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2161
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2159
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2157
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2155
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static messageWaitingIndicationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)Lorg/codeaurora/ims/Mwi;
    .locals 5
    .param p0, "messageWaitingIndication"    # Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;

    .line 2188
    if-nez p0, :cond_0

    .line 2189
    const/4 v0, 0x0

    return-object v0

    .line 2192
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi;-><init>()V

    .line 2193
    .local v0, "mwi":Lorg/codeaurora/ims/Mwi;
    sget-object v1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageWaitingIndicationFromHal summaryCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    .line 2194
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2193
    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;

    .line 2196
    .local v2, "summary":Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;
    if-eqz v2, :cond_1

    .line 2197
    iget-object v3, v0, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:Ljava/util/List;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->messageSummaryFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;)Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2199
    .end local v2    # "summary":Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;
    :cond_1
    goto :goto_0

    .line 2200
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2201
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi;->mUeAddress:Ljava/lang/String;

    .line 2203
    :cond_3
    sget-object v1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageWaitingIndicationFromHal detailsCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

    .line 2204
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2203
    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;

    .line 2206
    .local v2, "details":Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;
    if-eqz v2, :cond_4

    .line 2207
    iget-object v3, v0, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:Ljava/util/List;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->messageDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;)Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2209
    .end local v2    # "details":Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;
    :cond_4
    goto :goto_1

    .line 2210
    :cond_5
    return-object v0
.end method

.method public static migrateAccTechStatusFromV16(Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;)Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;
    .locals 2
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;

    .line 2908
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;-><init>()V

    .line 2910
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->networkMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateRadioTechTypeFromV16(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->networkMode:I

    .line 2911
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->status:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->status:I

    .line 2912
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->restrictCause:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->restrictCause:I

    .line 2913
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->hasRegistration:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->hasRegistration:Z

    .line 2914
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateRegistrationInfo(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    .line 2915
    return-object v0
.end method

.method public static migrateAddressToV10(Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    .locals 2
    .param p0, "addressInfo"    # Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    .line 2814
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;-><init>()V

    .line 2815
    .local v0, "addressInfoV10":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->city:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->city:Ljava/lang/String;

    .line 2816
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->state:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->state:Ljava/lang/String;

    .line 2817
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->country:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->country:Ljava/lang/String;

    .line 2818
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->postalCode:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->postalCode:Ljava/lang/String;

    .line 2819
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->countryCode:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->countryCode:Ljava/lang/String;

    .line 2820
    return-object v0
.end method

.method private static migrateCallFailCauseToV11(I)I
    .locals 1
    .param p0, "callFailCause"    # I

    .line 2677
    const/16 v0, 0x225

    if-ne p0, v0, :cond_0

    .line 2678
    goto :goto_0

    .line 2679
    :cond_0
    move v0, p0

    .line 2677
    :goto_0
    return v0
.end method

.method private static migrateCallFailCausefromV13(I)I
    .locals 1
    .param p0, "failCause"    # I

    .line 2851
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->isFailCauseIntroducedInV13(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2852
    const/16 v0, 0x224

    return v0

    .line 2855
    :cond_0
    return p0
.end method

.method private static migrateCallInfoToV11(Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    .locals 4
    .param p0, "callInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;

    .line 2685
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;-><init>()V

    .line 2688
    .local v0, "callInfoV11":Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->state:I

    .line 2689
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->index:I

    .line 2690
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->toa:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->toa:I

    .line 2691
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsMpty:Z

    .line 2692
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isMpty:Z

    .line 2693
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsMT:Z

    .line 2694
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isMT:Z

    .line 2695
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->als:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->als:I

    .line 2696
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVoice:Z

    .line 2697
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVoice:Z

    .line 2698
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVoicePrivacy:Z

    .line 2699
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVoicePrivacy:Z

    .line 2700
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->number:Ljava/lang/String;

    .line 2701
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->numberPresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->numberPresentation:I

    .line 2702
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->name:Ljava/lang/String;

    .line 2703
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->namePresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->namePresentation:I

    .line 2705
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasCallDetails:Z

    .line 2706
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 2707
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 2708
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 2710
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2711
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2710
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2714
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2715
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2714
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2718
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2719
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2718
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2722
    .end local v1    # "i":I
    :cond_2
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    .line 2723
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    .line 2724
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    .line 2725
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 2726
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 2728
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasFailCause:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasFailCause:Z

    .line 2729
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->failCause:I

    .line 2730
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallFailCauseToV11(I)I

    move-result v2

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->failCause:I

    .line 2732
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2733
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2732
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2736
    .end local v1    # "i":I
    :cond_3
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 2737
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->hasErrorDetails:Z

    .line 2738
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 2739
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 2742
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsEncrypted:Z

    .line 2743
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isEncrypted:Z

    .line 2744
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsCalledPartyRinging:Z

    .line 2745
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isCalledPartyRinging:Z

    .line 2746
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->historyInfo:Ljava/lang/String;

    .line 2747
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVideoConfSupported:Z

    .line 2748
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVideoConfSupported:Z

    .line 2750
    return-object v0
.end method

.method public static migrateCallListToV11(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;",
            ">;"
        }
    .end annotation

    .line 2757
    .local p0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    if-nez p0, :cond_0

    .line 2758
    const/4 v0, 0x0

    return-object v0

    .line 2760
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2763
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;

    .line 2764
    .local v2, "callInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallInfoToV11(Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;

    move-result-object v3

    .line 2765
    .local v3, "info":Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2766
    .end local v2    # "callInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;
    .end local v3    # "info":Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    goto :goto_0

    .line 2767
    :cond_1
    return-object v0
.end method

.method public static migrateCallModifyInfoToV19(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;
    .locals 2
    .param p0, "callModifyInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    .line 3055
    if-nez p0, :cond_0

    .line 3056
    const/4 v0, 0x0

    return-object v0

    .line 3059
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;-><init>()V

    .line 3061
    .local v0, "callModifyInfoV19":Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callIndex:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->callIndex:I

    .line 3062
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->hasCallDetails:Z

    .line 3063
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    .line 3064
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateCallDetails(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;)Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    move-result-object v1

    .line 3063
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV19;->migrateCallDetails(Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;)Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;

    .line 3065
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->failCause:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->failCause:I

    .line 3067
    return-object v0
.end method

.method public static migrateConfigInfoFromV15(Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    .locals 3
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 2864
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 2866
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->item:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->isConfigItemIntroducedInV15(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2869
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->item:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->item:I

    .line 2870
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->hasBoolValue:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->hasBoolValue:Z

    .line 2871
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->boolValue:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->boolValue:Z

    .line 2872
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->intValue:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    .line 2873
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->stringValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2874
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->stringValue:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 2876
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->errorCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    .line 2878
    return-object v0

    .line 2867
    :cond_1
    new-instance v1, Landroid/telephony/ims/ImsException;

    const-string v2, "Config item not supported in current HAL"

    invoke-direct {v1, v2}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static migrateFromDialRequestV14(Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;)Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    .line 940
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 942
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->address:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->address:Ljava/lang/String;

    .line 943
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->clirMode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->clirMode:I

    .line 944
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->presentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->presentation:I

    .line 945
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasCallDetails:Z

    .line 947
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 948
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 949
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 951
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 952
    .local v2, "extra":Ljava/lang/String;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    .end local v2    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 956
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 957
    .local v2, "localAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    .end local v2    # "localAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    goto :goto_1

    .line 961
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 962
    .local v2, "peerAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    .end local v2    # "peerAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    goto :goto_2

    .line 965
    :cond_2
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    .line 966
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    .line 967
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    .line 968
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 969
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 971
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsConferenceUri:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasIsConferenceUri:Z

    .line 972
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isConferenceUri:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->isConferenceUri:Z

    .line 973
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsCallPull:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasIsCallPull:Z

    .line 974
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isCallPull:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->isCallPull:Z

    .line 975
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasIsEncrypted:Z

    .line 976
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->isEncrypted:Z

    .line 978
    return-object v0
.end method

.method public static migrateHangupRequestInfoFromV13(Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;)Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;

    .line 2825
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;-><init>()V

    .line 2826
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connIndex:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->connIndex:I

    .line 2827
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->hasMultiParty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->hasMultiParty:Z

    .line 2828
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->multiParty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->multiParty:Z

    .line 2829
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connUri:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->connUri:Ljava/lang/String;

    .line 2830
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->conf_id:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->conf_id:I

    .line 2831
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->hasFailCauseResponse:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->hasFailCauseResponse:Z

    .line 2832
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->failCause:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallFailCausefromV13(I)I

    move-result v2

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->failCause:I

    .line 2835
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 2836
    .local v2, "errorInfo":Ljava/lang/Byte;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2837
    .end local v2    # "errorInfo":Ljava/lang/Byte;
    goto :goto_0

    .line 2839
    :cond_0
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 2840
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->hasErrorDetails:Z

    .line 2841
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 2843
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 2845
    return-object v0
.end method

.method private static migrateRadioTechTypeFromV16(I)I
    .locals 1
    .param p0, "from"    # I

    .line 2932
    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method public static migrateRegistrationInfo(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    .locals 2
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    .line 2921
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 2923
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    .line 2924
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->errorCode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorCode:I

    .line 2925
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->errorMessage:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorMessage:Ljava/lang/String;

    .line 2926
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->radioTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateRadioTechTypeFromV16(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->radioTech:I

    .line 2927
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    .line 2928
    return-object v0
.end method

.method public static migrateServiceStatusInfoFromV16(Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;)Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    .locals 5
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    .line 2889
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;-><init>()V

    .line 2891
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->hasIsValid:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->hasIsValid:Z

    .line 2892
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->isValid:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->isValid:Z

    .line 2893
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->type:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->type:I

    .line 2894
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->callType:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->callType:I

    .line 2895
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->status:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    .line 2896
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    .line 2897
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->restrictCause:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->restrictCause:I

    .line 2898
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;

    .line 2899
    .local v2, "status":Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateAccTechStatusFromV16(Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;)Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2900
    .end local v2    # "status":Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;
    goto :goto_0

    .line 2901
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->rttMode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->rttMode:I

    .line 2902
    return-object v0
.end method

.method private static notificationTypeFromHal(I)I
    .locals 1
    .param p0, "inNotificationType"    # I

    .line 1497
    packed-switch p0, :pswitch_data_0

    .line 1503
    const v0, 0x7fffffff

    return v0

    .line 1501
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1499
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static operationFromHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2334
    packed-switch p0, :pswitch_data_0

    .line 2340
    const/4 v0, -0x1

    return v0

    .line 2338
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2336
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static participantStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)Lorg/codeaurora/ims/ParticipantStatusDetails;
    .locals 4
    .param p0, "participantStatusInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;

    .line 2347
    if-nez p0, :cond_0

    .line 2348
    const/4 v0, 0x0

    return-object v0

    .line 2351
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ParticipantStatusDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;-><init>()V

    .line 2353
    .local v0, "participantStatus":Lorg/codeaurora/ims/ParticipantStatusDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->callId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2354
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->callId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setCallId(I)V

    .line 2357
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->operation:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 2358
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->operation:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->operationFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setOperation(I)V

    .line 2361
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->participantUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setParticipantUri(Ljava/lang/String;)V

    .line 2363
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->sipStatus:I

    if-eq v1, v2, :cond_3

    .line 2364
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->sipStatus:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setSipStatus(I)V

    .line 2367
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->hasIsEct:Z

    if-eqz v1, :cond_4

    .line 2368
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->isEct:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setIsEct(Z)V

    .line 2371
    :cond_4
    return-object v0
.end method

.method public static radioTechFromHal(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .line 741
    packed-switch p0, :pswitch_data_0

    .line 787
    :pswitch_0
    const v0, 0x7fffffff

    return v0

    .line 785
    :pswitch_1
    const/16 v0, 0x14

    return v0

    .line 783
    :pswitch_2
    const/16 v0, 0x13

    return v0

    .line 781
    :pswitch_3
    const/16 v0, 0x12

    return v0

    .line 779
    :pswitch_4
    const/16 v0, 0x11

    return v0

    .line 777
    :pswitch_5
    const/16 v0, 0x10

    return v0

    .line 775
    :pswitch_6
    const/16 v0, 0xf

    return v0

    .line 773
    :pswitch_7
    const/16 v0, 0xe

    return v0

    .line 771
    :pswitch_8
    const/16 v0, 0xd

    return v0

    .line 769
    :pswitch_9
    const/16 v0, 0xc

    return v0

    .line 767
    :pswitch_a
    const/16 v0, 0xb

    return v0

    .line 765
    :pswitch_b
    const/16 v0, 0xa

    return v0

    .line 763
    :pswitch_c
    const/16 v0, 0x9

    return v0

    .line 761
    :pswitch_d
    const/16 v0, 0x8

    return v0

    .line 759
    :pswitch_e
    const/4 v0, 0x7

    return v0

    .line 757
    :pswitch_f
    const/4 v0, 0x6

    return v0

    .line 755
    :pswitch_10
    const/4 v0, 0x5

    return v0

    .line 753
    :pswitch_11
    const/4 v0, 0x4

    return v0

    .line 751
    :pswitch_12
    const/4 v0, 0x3

    return v0

    .line 749
    :pswitch_13
    const/4 v0, 0x2

    return v0

    .line 747
    :pswitch_14
    const/4 v0, 0x1

    return v0

    .line 745
    :pswitch_15
    const/4 v0, 0x0

    return v0

    .line 743
    :pswitch_16
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static regFailureReasonTypeFromHal(I)I
    .locals 1
    .param p0, "inRegFailureReasonType"    # I

    .line 2441
    packed-switch p0, :pswitch_data_0

    .line 2463
    const/4 v0, -0x1

    return v0

    .line 2459
    :pswitch_0
    const/16 v0, 0xa

    return v0

    .line 2457
    :pswitch_1
    const/16 v0, 0x9

    return v0

    .line 2455
    :pswitch_2
    const/16 v0, 0x8

    return v0

    .line 2453
    :pswitch_3
    const/4 v0, 0x7

    return v0

    .line 2451
    :pswitch_4
    const/4 v0, 0x6

    return v0

    .line 2449
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 2447
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 2445
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 2443
    :pswitch_8
    const/4 v0, 0x2

    return v0

    .line 2461
    :pswitch_9
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static regStateFromHal(I)I
    .locals 1
    .param p0, "state"    # I

    .line 715
    packed-switch p0, :pswitch_data_0

    .line 723
    const/4 v0, -0x1

    return v0

    .line 719
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 721
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 717
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static regStateToHal(I)I
    .locals 1
    .param p0, "state"    # I

    .line 728
    packed-switch p0, :pswitch_data_0

    .line 736
    const/4 v0, 0x3

    return v0

    .line 734
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 732
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 730
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static registrationBlockStatusFromHal(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    .locals 2
    .param p0, "hasBlockStatusOnWwan"    # Z
    .param p1, "blockStatusOnWwan"    # Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    .param p2, "hasBlockStatusOnWlan"    # Z
    .param p3, "blockStatusOnWlan"    # Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    .line 2377
    new-instance v0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;-><init>()V

    .line 2379
    .local v0, "regBlockStatus":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    if-eqz p0, :cond_0

    .line 2380
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->blockStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->setStatusOnWwan(Lorg/codeaurora/ims/BlockStatusInfo;)V

    .line 2383
    :cond_0
    if-eqz p2, :cond_1

    .line 2384
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->blockStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->setStatusOnWlan(Lorg/codeaurora/ims/BlockStatusInfo;)V

    .line 2387
    :cond_1
    return-object v0
.end method

.method public static registrationFromHal(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;
    .locals 3
    .param p0, "inRegistration"    # Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    .line 674
    const/4 v0, 0x0

    .line 676
    .local v0, "outRegistration":Lorg/codeaurora/ims/ImsRegistrationInfo;
    if-eqz p0, :cond_3

    .line 677
    new-instance v1, Lorg/codeaurora/ims/ImsRegistrationInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;-><init>()V

    move-object v0, v1

    .line 678
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 679
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->regStateFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setState(I)V

    .line 682
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->errorCode:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 683
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->errorCode:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setErrorCode(I)V

    .line 686
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setErrorMessage(Ljava/lang/String;)V

    .line 688
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->radioTech:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_2

    .line 689
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->radioTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setRadioTech(I)V

    .line 692
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setPAssociatedUris(Ljava/lang/String;)V

    .line 695
    :cond_3
    return-object v0
.end method

.method public static requestTypeFromRILRequestType(I)I
    .locals 1
    .param p0, "requestType"    # I

    .line 2618
    packed-switch p0, :pswitch_data_0

    .line 2631
    const/4 v0, -0x1

    return v0

    .line 2628
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2626
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2624
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2622
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 2620
    :pswitch_4
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ringbackToneFromHal(I)I
    .locals 1
    .param p0, "tone"    # I

    .line 1199
    packed-switch p0, :pswitch_data_0

    .line 1205
    const/4 v0, 0x0

    return v0

    .line 1201
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static rttModeFromHal(I)I
    .locals 1
    .param p0, "rttMode"    # I

    .line 2987
    packed-switch p0, :pswitch_data_0

    .line 2992
    const/4 v0, 0x0

    return v0

    .line 2989
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static rttModeToHal(I)I
    .locals 1
    .param p0, "rttMode"    # I

    .line 2976
    packed-switch p0, :pswitch_data_0

    .line 2981
    const/4 v0, 0x0

    return v0

    .line 2978
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static serviceClassProvisionStatusFromHal(I)I
    .locals 1
    .param p0, "inServiceProvisionStatus"    # I

    .line 1447
    packed-switch p0, :pswitch_data_0

    .line 1453
    const/4 v0, 0x2

    return v0

    .line 1451
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1449
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static serviceClassStatusFromHal(I)I
    .locals 1
    .param p0, "inServiceStatus"    # I

    .line 1436
    packed-switch p0, :pswitch_data_0

    .line 1442
    const/4 v0, -0x1

    return v0

    .line 1438
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1440
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static serviceTypeFromRILServiceType(I)I
    .locals 1
    .param p0, "serviceType"    # I

    .line 2565
    packed-switch p0, :pswitch_data_0

    .line 2614
    const/4 v0, -0x1

    return v0

    .line 2611
    :pswitch_0
    const/16 v0, 0x16

    return v0

    .line 2609
    :pswitch_1
    const/16 v0, 0x15

    return v0

    .line 2607
    :pswitch_2
    const/16 v0, 0x14

    return v0

    .line 2605
    :pswitch_3
    const/16 v0, 0x13

    return v0

    .line 2603
    :pswitch_4
    const/16 v0, 0x12

    return v0

    .line 2601
    :pswitch_5
    const/16 v0, 0x11

    return v0

    .line 2599
    :pswitch_6
    const/16 v0, 0x10

    return v0

    .line 2597
    :pswitch_7
    const/16 v0, 0xf

    return v0

    .line 2595
    :pswitch_8
    const/16 v0, 0xe

    return v0

    .line 2593
    :pswitch_9
    const/16 v0, 0xd

    return v0

    .line 2591
    :pswitch_a
    const/16 v0, 0xc

    return v0

    .line 2589
    :pswitch_b
    const/16 v0, 0xb

    return v0

    .line 2587
    :pswitch_c
    const/16 v0, 0xa

    return v0

    .line 2585
    :pswitch_d
    const/16 v0, 0x9

    return v0

    .line 2583
    :pswitch_e
    const/16 v0, 0x8

    return v0

    .line 2581
    :pswitch_f
    const/4 v0, 0x7

    return v0

    .line 2579
    :pswitch_10
    const/4 v0, 0x6

    return v0

    .line 2577
    :pswitch_11
    const/4 v0, 0x5

    return v0

    .line 2575
    :pswitch_12
    const/4 v0, 0x4

    return v0

    .line 2573
    :pswitch_13
    const/4 v0, 0x3

    return v0

    .line 2571
    :pswitch_14
    const/4 v0, 0x2

    return v0

    .line 2569
    :pswitch_15
    const/4 v0, 0x1

    return v0

    .line 2567
    :pswitch_16
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 5
    .param p0, "errorInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 866
    const/4 v0, 0x0

    .line 867
    .local v0, "ismReasonCode":I
    const/4 v1, 0x0

    .line 868
    .local v1, "imsReasonExtraCode":I
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 869
    .local v2, "imsReasonExtraMessage":Ljava/lang/String;
    iget v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_0

    .line 870
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 872
    :cond_0
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v3
.end method

.method public static statusForAccessTechFromHal(Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;)Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .locals 3
    .param p0, "inStatus"    # Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;

    .line 643
    const/4 v0, 0x0

    .line 645
    .local v0, "outStatus":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    if-eqz p0, :cond_4

    .line 646
    new-instance v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    move-object v0, v1

    .line 647
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->networkMode:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    .line 648
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->networkMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 651
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->status:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 652
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 655
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->restrictCause:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 656
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->restrictCause:I

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 659
    :cond_2
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->hasRegistration:Z

    if-eqz v1, :cond_4

    .line 660
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    if-eqz v1, :cond_3

    .line 662
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->regStateFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    goto :goto_0

    .line 664
    :cond_3
    const/4 v1, 0x2

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 665
    const-class v1, Lorg/codeaurora/ims/ImsRadioUtils;

    const-string v2, "Registered not sent"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static statusReportfromHidl(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)Lorg/codeaurora/ims/sms/StatusReport;
    .locals 4
    .param p0, "report"    # Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;

    .line 493
    new-instance v0, Lorg/codeaurora/ims/sms/StatusReport;

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->messageRef:I

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->format:Ljava/lang/String;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->pdu:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->getSmsPdu(Ljava/util/ArrayList;)[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/sms/StatusReport;-><init>(ILjava/lang/String;[B)V

    return-object v0
.end method

.method public static statusTypeFromHal(I)I
    .locals 1
    .param p0, "status"    # I

    .line 1064
    packed-switch p0, :pswitch_data_0

    .line 1073
    const/4 v0, 0x3

    return v0

    .line 1070
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1068
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1066
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static statusTypeToHal(I)I
    .locals 1
    .param p0, "status"    # I

    .line 1049
    packed-switch p0, :pswitch_data_0

    .line 1059
    const/4 v0, 0x4

    return v0

    .line 1057
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1055
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1053
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1051
    :pswitch_3
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static suppServiceNotificationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)Lorg/codeaurora/ims/SuppNotifyInfo;
    .locals 3
    .param p0, "inNotification"    # Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;

    .line 1459
    if-nez p0, :cond_0

    .line 1460
    const/4 v0, 0x0

    return-object v0

    .line 1463
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/SuppNotifyInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppNotifyInfo;-><init>()V

    .line 1465
    .local v0, "outNotification":Lorg/codeaurora/ims/SuppNotifyInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->notificationType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1466
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->notificationType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->notificationTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setNotificationType(I)V

    .line 1470
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->code:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1471
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->code:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setCode(I)V

    .line 1474
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->index:I

    if-eq v1, v2, :cond_3

    .line 1475
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->index:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setIndex(I)V

    .line 1478
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->type:I

    if-eq v1, v2, :cond_4

    .line 1479
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->type:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setType(I)V

    .line 1482
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->connId:I

    if-eq v1, v2, :cond_5

    .line 1483
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->connId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setConnId(I)V

    .line 1486
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setNumber(Ljava/lang/String;)V

    .line 1487
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->historyInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setHistoryInfo(Ljava/lang/String;)V

    .line 1489
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->hasHoldTone:Z

    if-eqz v1, :cond_6

    .line 1490
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->holdTone:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setHoldTone(Z)V

    .line 1493
    :cond_6
    return-object v0
.end method

.method public static suppSvcStatusResponseFromHal(Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)Lorg/codeaurora/ims/SuppSvcResponse;
    .locals 9
    .param p0, "suppServiceStatus"    # Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;

    .line 1572
    new-instance v0, Lorg/codeaurora/ims/SuppSvcResponse;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppSvcResponse;-><init>()V

    .line 1574
    .local v0, "suppSvcResponse":Lorg/codeaurora/ims/SuppSvcResponse;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassStatusFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setStatus(I)V

    .line 1576
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->provisionStatus:I

    .line 1577
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassProvisionStatusFromHal(I)I

    move-result v1

    .line 1576
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setProvisionStatus(I)V

    .line 1579
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->facilityType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 1580
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->facilityType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->FacilityTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setFacilityType(I)V

    .line 1583
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->failureCause:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->failureCause:Ljava/lang/String;

    .line 1584
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1585
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setFailureCause(Ljava/lang/String;)V

    .line 1588
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->cbNumListInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    .line 1589
    .local v2, "numList":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    iget v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->serviceClass:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_2

    .line 1590
    goto :goto_0

    .line 1592
    :cond_2
    new-instance v3, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->serviceClass:I

    invoke-direct {v3, v4}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;-><init>(I)V

    .line 1595
    .local v3, "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->cbNumInfo:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1596
    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->cbNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;

    .line 1597
    .local v5, "numInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    new-instance v6, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;

    iget v7, v5, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->status:I

    iget-object v8, v5, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->number:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;-><init>(ILjava/lang/String;)V

    .line 1600
    .local v6, "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    invoke-virtual {v3, v6}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->addLine(Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;)V

    .line 1601
    .end local v5    # "numInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    .end local v6    # "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    goto :goto_1

    .line 1603
    :cond_3
    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/SuppSvcResponse;->addBarredLines(Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;)V

    .line 1604
    .end local v2    # "numList":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    .end local v3    # "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    goto :goto_0

    .line 1606
    :cond_4
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->hasErrorDetails:Z

    if-eqz v1, :cond_5

    .line 1607
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1609
    :cond_5
    return-object v0
.end method

.method public static teleserviceTypeFromRILTeleserviceType(I)I
    .locals 1
    .param p0, "teleservice"    # I

    .line 2635
    packed-switch p0, :pswitch_data_0

    .line 2650
    const/4 v0, -0x1

    return v0

    .line 2647
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2645
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2643
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2641
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2639
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2637
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toCallSubstateConstants(I)I
    .locals 1
    .param p0, "callSubstate"    # I

    .line 699
    sparse-switch p0, :sswitch_data_0

    .line 710
    const/4 v0, 0x0

    return v0

    .line 707
    :sswitch_0
    const/16 v0, 0x8

    return v0

    .line 705
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 703
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 701
    :sswitch_3
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ttyModeFromHal(I)I
    .locals 1
    .param p0, "ttyMode"    # I

    .line 1625
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1635
    return v0

    .line 1633
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1631
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1629
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1627
    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ttyModeToHal(I)I
    .locals 1
    .param p0, "ttyMode"    # I

    .line 1640
    packed-switch p0, :pswitch_data_0

    .line 1650
    const/4 v0, 0x4

    return v0

    .line 1646
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1644
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1642
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1648
    :pswitch_3
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static unpackAccTechStatus(Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .locals 5
    .param p0, "info"    # Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    .line 624
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 626
    .local v0, "statusListLen":I
    new-array v1, v0, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 629
    .local v1, "statusForAccessTech":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 630
    new-instance v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v3}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v3, v1, v2

    .line 631
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->statusForAccessTechFromHal(Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;)Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-result-object v3

    aput-object v3, v1, v2

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " networkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " restrictCause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 629
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 638
    .end local v2    # "j":I
    :cond_0
    return-object v1
.end method

.method public static ussdInfoFromHal(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Lorg/codeaurora/ims/UssdInfo;
    .locals 4
    .param p0, "type"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "errorDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 2488
    new-instance v0, Lorg/codeaurora/ims/UssdInfo;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->ussdTypeFromHal(I)I

    move-result v1

    iget v2, p2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iget-object v3, p2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/codeaurora/ims/UssdInfo;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static ussdTypeFromHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2494
    packed-switch p0, :pswitch_data_0

    .line 2508
    const/4 v0, -0x1

    return v0

    .line 2506
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2504
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2502
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2500
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2498
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2496
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static voWiFiCallQualityFromHal(I)[I
    .locals 3
    .param p0, "voWiFiCallQuality"    # I

    .line 2468
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2469
    .local v1, "ret":[I
    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2480
    aput v2, v1, v2

    goto :goto_0

    .line 2477
    :pswitch_0
    const/4 v0, 0x4

    aput v0, v1, v2

    .line 2478
    goto :goto_0

    .line 2474
    :pswitch_1
    const/4 v0, 0x2

    aput v0, v1, v2

    .line 2475
    goto :goto_0

    .line 2471
    :pswitch_2
    aput v0, v1, v2

    .line 2472
    nop

    .line 2483
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static voiceInfoTypeFromHal(I)I
    .locals 1
    .param p0, "voiceInfo"    # I

    .line 2936
    packed-switch p0, :pswitch_data_0

    .line 2943
    const/4 v0, 0x2

    return v0

    .line 2940
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2938
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
