.class public abstract Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;
.super Landroid/os/HwBinder;
.source "IQtiRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 760
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 763
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 780
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 821
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 822
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 823
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 824
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 825
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 792
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    new-array v3, v1, [B

    fill-array-data v3, :array_1

    new-array v4, v1, [B

    fill-array-data v4, :array_2

    new-array v5, v1, [B

    fill-array-data v5, :array_3

    new-array v6, v1, [B

    fill-array-data v6, :array_4

    new-array v7, v1, [B

    fill-array-data v7, :array_5

    filled-new-array/range {v2 .. v7}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
    .array-data 1
        -0x1dt
        0x14t
        -0x50t
        0x17t
        0x5dt
        -0x5ft
        -0x22t
        0x0t
        0x59t
        -0x32t
        -0x17t
        -0x48t
        0x27t
        -0x59t
        0x57t
        -0x49t
        0x7dt
        -0x4bt
        -0x66t
        0x18t
        0x8t
        -0x7ct
        0x2bt
        -0x7dt
        0x1dt
        0x6ft
        0xdt
        -0x2t
        0x6ct
        -0x1bt
        -0x6t
        -0x4at
    .end array-data

    :array_1
    .array-data 1
        -0x23t
        -0x74t
        0x48t
        0x32t
        0xbt
        -0x71t
        0x3et
        -0x46t
        -0x6et
        0x19t
        0x5bt
        0x69t
        0x23t
        0x2t
        0x29t
        -0x33t
        0x54t
        0x13t
        -0x68t
        0x32t
        0x2ct
        0x18t
        -0x6t
        -0x2dt
        -0x17t
        0x70t
        0x41t
        -0x4ct
        -0x2ct
        0x1et
        -0x26t
        -0x23t
    .end array-data

    :array_2
    .array-data 1
        -0x75t
        0x66t
        0x67t
        -0xbt
        0x50t
        -0x77t
        0x26t
        -0x56t
        0x21t
        -0x3at
        0x8t
        0x6ct
        -0x1bt
        -0x7dt
        0x2ft
        -0x2bt
        0x29t
        0x1ct
        0x1ft
        0xft
        0x7t
        -0x6ct
        0x5at
        0x66t
        -0x4et
        -0x41t
        0x67t
        0x74t
        0x5t
        0x31t
        -0x6bt
        -0x5t
    .end array-data

    :array_3
    .array-data 1
        -0x28t
        -0x5ft
        -0x52t
        0x7t
        0x36t
        0x6dt
        -0x64t
        0x14t
        0xet
        -0xat
        -0x10t
        -0x3et
        0x4at
        -0x46t
        0x46t
        -0x2at
        -0x1ct
        -0x38t
        0x44t
        -0x2ct
        0x34t
        -0x3ct
        0x20t
        0x1at
        -0x1dt
        -0x39t
        0x43t
        0x42t
        -0x35t
        0x79t
        -0x71t
        -0x62t
    .end array-data

    :array_4
    .array-data 1
        0x68t
        0x5t
        0x77t
        -0x60t
        0x61t
        0x54t
        -0x71t
        0x1dt
        -0x79t
        0x55t
        -0x39t
        -0x4t
        0x52t
        -0x51t
        0x52t
        0x62t
        0x38t
        0x28t
        0x7ct
        -0x61t
        0x18t
        0x27t
        -0x4ft
        0x20t
        0x10t
        -0x64t
        -0x9t
        0xft
        -0x43t
        -0x3bt
        0x6dt
        -0x24t
    .end array-data

    :array_5
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 768
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.qtiradio@2.3::IQtiRadio"

    const-string v2, "vendor.qti.hardware.radio.qtiradio@2.2::IQtiRadio"

    const-string v3, "vendor.qti.hardware.radio.qtiradio@2.1::IQtiRadio"

    const-string v4, "vendor.qti.hardware.radio.qtiradio@2.0::IQtiRadio"

    const-string v5, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadio"

    const-string v6, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 786
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.3::IQtiRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 809
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 831
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 833
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 10
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 861
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.1::IQtiRadio"

    const-string v1, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadio"

    const-string v2, "vendor.qti.hardware.radio.qtiradio@2.3::IQtiRadio"

    const-string v3, "android.hidl.base@1.0::IBase"

    const-string v4, "vendor.qti.hardware.radio.qtiradio@2.0::IQtiRadio"

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1147
    :sswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->notifySyspropsChanged()V

    .line 1150
    goto/16 :goto_1

    .line 1136
    :sswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1139
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1140
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1141
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1142
    goto/16 :goto_1

    .line 1126
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->ping()V

    .line 1129
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1130
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1131
    goto/16 :goto_1

    .line 1121
    :sswitch_3
    goto/16 :goto_1

    .line 1113
    :sswitch_4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->setHALInstrumentation()V

    .line 1116
    goto/16 :goto_1

    .line 1079
    :sswitch_5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1082
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1084
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1086
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1087
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1088
    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1089
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1090
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1092
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1093
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1095
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1099
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1100
    nop

    .line 1090
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1096
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1103
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1105
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1107
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1108
    goto/16 :goto_1

    .line 1068
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1072
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1074
    goto/16 :goto_1

    .line 1056
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1059
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1060
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1061
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1062
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1063
    goto/16 :goto_1

    .line 1045
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1048
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1049
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1050
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1051
    goto/16 :goto_1

    .line 1032
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1035
    .local v0, "prop":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1036
    .local v1, "def":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1037
    .local v2, "_hidl_out_val":Ljava/lang/String;
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1038
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1040
    goto/16 :goto_1

    .line 1019
    .end local v0    # "prop":Ljava/lang/String;
    .end local v1    # "def":Ljava/lang/String;
    .end local v2    # "_hidl_out_val":Ljava/lang/String;
    :sswitch_a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1022
    .restart local v0    # "prop":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1023
    .local v1, "def":Z
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result v2

    .line 1024
    .local v2, "_hidl_out_val":Z
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1025
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1026
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1027
    goto/16 :goto_1

    .line 1006
    .end local v0    # "prop":Ljava/lang/String;
    .end local v1    # "def":Z
    .end local v2    # "_hidl_out_val":Z
    :sswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1009
    .restart local v0    # "prop":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1010
    .local v1, "def":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result v2

    .line 1011
    .local v2, "_hidl_out_val":I
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1012
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1013
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1014
    goto/16 :goto_1

    .line 997
    .end local v0    # "prop":Ljava/lang/String;
    .end local v1    # "def":I
    .end local v2    # "_hidl_out_val":I
    :sswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1000
    .local v0, "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->queryEndcStatus(I)V

    .line 1001
    goto/16 :goto_1

    .line 987
    .end local v0    # "serial":I
    :sswitch_d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 990
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 991
    .local v1, "enable":Z
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->enableEndc(IZ)V

    .line 992
    goto/16 :goto_1

    .line 978
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_e
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.2::IQtiRadio"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 981
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->queryNrIconType(I)V

    .line 982
    goto/16 :goto_1

    .line 969
    .end local v0    # "serial":I
    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 972
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->query5gConfigInfo(I)V

    .line 973
    goto/16 :goto_1

    .line 960
    .end local v0    # "serial":I
    :sswitch_10
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 963
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->queryUpperLayerIndInfo(I)V

    .line 964
    goto/16 :goto_1

    .line 948
    .end local v0    # "serial":I
    :sswitch_11
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 951
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 952
    .local v1, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 953
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 954
    .local v2, "expectMore":Z
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;Z)V

    .line 955
    goto/16 :goto_1

    .line 939
    .end local v0    # "serial":I
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    .end local v2    # "expectMore":Z
    :sswitch_12
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 942
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->queryNrSignalStrength(I)V

    .line 943
    goto :goto_1

    .line 930
    .end local v0    # "serial":I
    :sswitch_13
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 933
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->queryNrBearerAllocation(I)V

    .line 934
    goto :goto_1

    .line 921
    .end local v0    # "serial":I
    :sswitch_14
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 924
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->queryNrDcParam(I)V

    .line 925
    goto :goto_1

    .line 912
    .end local v0    # "serial":I
    :sswitch_15
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 915
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->query5gStatus(I)V

    .line 916
    goto :goto_1

    .line 903
    .end local v0    # "serial":I
    :sswitch_16
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 906
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->enable5gOnly(I)V

    .line 907
    goto :goto_1

    .line 894
    .end local v0    # "serial":I
    :sswitch_17
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 897
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->disable5g(I)V

    .line 898
    goto :goto_1

    .line 885
    .end local v0    # "serial":I
    :sswitch_18
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 888
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->enable5g(I)V

    .line 889
    goto :goto_1

    .line 876
    .end local v0    # "serial":I
    :sswitch_19
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 879
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->getAtr(I)V

    .line 880
    goto :goto_1

    .line 864
    .end local v0    # "serial":I
    :sswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse;

    move-result-object v0

    .line 867
    .local v0, "responseCallback":Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication;

    move-result-object v1

    .line 868
    .local v1, "indicationCallback":Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication;
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->setCallback(Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse;Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication;)V

    .line 869
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 870
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 871
    nop

    .line 1159
    .end local v0    # "responseCallback":Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse;
    .end local v1    # "indicationCallback":Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication;
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1a
        0x2 -> :sswitch_19
        0x3 -> :sswitch_18
        0x4 -> :sswitch_17
        0x5 -> :sswitch_16
        0x6 -> :sswitch_15
        0x7 -> :sswitch_14
        0x8 -> :sswitch_13
        0x9 -> :sswitch_12
        0xa -> :sswitch_11
        0xb -> :sswitch_10
        0xc -> :sswitch_f
        0xd -> :sswitch_e
        0xe -> :sswitch_d
        0xf -> :sswitch_c
        0x10 -> :sswitch_b
        0x11 -> :sswitch_a
        0x12 -> :sswitch_9
        0xf43484e -> :sswitch_8
        0xf444247 -> :sswitch_7
        0xf445343 -> :sswitch_6
        0xf485348 -> :sswitch_5
        0xf494e54 -> :sswitch_4
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 815
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 843
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.3::IQtiRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    return-object p0

    .line 846
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 850
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 805
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 837
    const/4 v0, 0x1

    return v0
.end method
