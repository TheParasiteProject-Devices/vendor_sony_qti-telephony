.class public final synthetic Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->lambda$onQosParametersChanged$0(ILcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p1

    return p1
.end method
