.class Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe$UnSubscribeRequest;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "PresenceMsgBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnSubscribeRequest"
.end annotation


# static fields
.field public static final PEER_URI_TYPE:S = 0x1s


# instance fields
.field peerURI:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "peerURI"    # Ljava/lang/String;

    .line 238
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 239
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe$UnSubscribeRequest;->peerURI:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    .line 240
    return-void
.end method


# virtual methods
.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 3

    .line 244
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe$UnSubscribeRequest;->peerURI:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTypes()[S
    .locals 3

    .line 251
    const/4 v0, 0x1

    new-array v1, v0, [S

    const/4 v2, 0x0

    aput-short v0, v1, v2

    return-object v1
.end method
