.class Lcom/qualcomm/qcrilhook/QcRilHook$1;
.super Landroid/content/BroadcastReceiver;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qcrilhook/QcRilHook;


# direct methods
.method constructor <init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 169
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.qualcomm.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "QC_RIL_OEM_HOOK"

    if-eqz v1, :cond_3

    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, "response_id":I
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    const-string v4, "Received Broadcast Intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-static {v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->-$$Nest$mlogd(Lcom/qualcomm/qcrilhook/QcRilHook;Ljava/lang/String;)V

    .line 178
    const-string v3, "payload"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 179
    .local v3, "payload":[B
    const-string v4, "INSTANCE_ID"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 181
    .local v4, "instanceId":I
    if-eqz v3, :cond_2

    .line 183
    array-length v5, v3

    iget-object v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->-$$Nest$fgetmHeaderSize(Lcom/qualcomm/qcrilhook/QcRilHook;)I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 184
    const-string v5, "UNSOL_RESPONSE_OEM_HOOK_RAW incomplete header"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->-$$Nest$fgetmHeaderSize(Lcom/qualcomm/qcrilhook/QcRilHook;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes. Received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 189
    :cond_0
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 190
    .local v5, "response":Ljava/nio/ByteBuffer;
    const-string v6, "QOEMHOOK"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    new-array v7, v7, [B

    .line 191
    .local v7, "oem_id_bytes":[B
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 192
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    .line 193
    .local v8, "oem_id_str":Ljava/lang/String;
    iget-object v9, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Oem ID in QCRILHOOK UNSOL RESP is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/qcrilhook/QcRilHook;->-$$Nest$mlogd(Lcom/qualcomm/qcrilhook/QcRilHook;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 195
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect Oem ID in QCRILHOOK UNSOL RESP. Expected QOEMHOOK. Received "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void

    .line 200
    :cond_1
    array-length v2, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v2, v6

    .line 201
    .local v2, "remainingSize":I
    if-lez v2, :cond_2

    .line 202
    new-array v6, v2, [B

    .line 204
    .local v6, "remainingPayload":[B
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 205
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 206
    .local v9, "msg":Landroid/os/Message;
    iput-object v6, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    iput v4, v9, Landroid/os/Message;->arg1:I

    .line 213
    new-instance v10, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v9, v11}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 214
    .local v10, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    invoke-static {v10}, Lcom/qualcomm/qcrilhook/QcRilHook;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 218
    .end local v1    # "response_id":I
    .end local v2    # "remainingSize":I
    .end local v3    # "payload":[B
    .end local v4    # "instanceId":I
    .end local v5    # "response":Ljava/nio/ByteBuffer;
    .end local v6    # "remainingPayload":[B
    .end local v7    # "oem_id_bytes":[B
    .end local v8    # "oem_id_str":Ljava/lang/String;
    .end local v9    # "msg":Landroid/os/Message;
    .end local v10    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_2
    goto :goto_0

    .line 219
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received Unknown Intent: action = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    return-void
.end method
