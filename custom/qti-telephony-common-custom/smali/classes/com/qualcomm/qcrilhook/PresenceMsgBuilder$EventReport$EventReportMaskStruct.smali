.class Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "PresenceMsgBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventReportMaskStruct"
.end annotation


# instance fields
.field mMask:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "mask"    # I

    .line 579
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 580
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(I)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->mMask:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    .line 582
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 597
    const/16 v0, 0x8

    return v0
.end method

.method public toByteArray()[B
    .locals 3

    .line 586
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->getSize()I

    move-result v0

    .line 588
    .local v0, "size":I
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 589
    .local v1, "tempBuf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->mMask:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 590
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->mMask:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[mMask_%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTlv(S)[B
    .locals 4
    .param p1, "type"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 603
    nop

    .line 605
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 603
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 607
    .local v0, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseByte(S)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    nop

    .line 611
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 612
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 615
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 608
    :catch_0
    move-exception v1

    .line 609
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
