.class Lcom/android/keyguard/MSimCarrierText$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "MSimCarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MSimCarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MSimCarrierText;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimCarrierText;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/keyguard/MSimCarrierText$1;->this$0:Lcom/android/keyguard/MSimCarrierText;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 6
    .param p1, "plmn"    # Ljava/lang/CharSequence;
    .param p2, "spn"    # Ljava/lang/CharSequence;
    .param p3, "sub"    # I

    .prologue
    .line 53
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    const-string v2, "MSimCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onRefreshCarrierInfo:: PLMN : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SPN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SUB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    # getter for: Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$000()[Ljava/lang/CharSequence;

    move-result-object v2

    aput-object p1, v2, p3

    .line 56
    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$100()[Ljava/lang/CharSequence;

    move-result-object v2

    aput-object p2, v2, p3

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/MSimCarrierText$1;->this$0:Lcom/android/keyguard/MSimCarrierText;

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$200()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$000()[Ljava/lang/CharSequence;

    move-result-object v4

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$100()[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/keyguard/MSimCarrierText;->updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 77
    return-void

    .line 58
    :cond_0
    move v1, p3

    .line 60
    .local v1, "swapSub":I
    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "mSIMM":Ljava/lang/String;
    const-string v2, "MSimCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRefreshCarrierInfo on sub :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSIMM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    if-nez p3, :cond_2

    .line 65
    const/4 v1, 0x1

    .line 72
    :cond_1
    :goto_1
    # getter for: Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$000()[Ljava/lang/CharSequence;

    move-result-object v2

    aput-object p1, v2, v1

    .line 73
    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$100()[Ljava/lang/CharSequence;

    move-result-object v2

    aput-object p2, v2, v1

    goto :goto_0

    .line 68
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 6
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "sub"    # I

    .prologue
    .line 81
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$200()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    aput-object p1, v2, p2

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/MSimCarrierText$1;->this$0:Lcom/android/keyguard/MSimCarrierText;

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$200()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$000()[Ljava/lang/CharSequence;

    move-result-object v4

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$100()[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/keyguard/MSimCarrierText;->updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 100
    return-void

    .line 84
    :cond_0
    move v1, p2

    .line 86
    .local v1, "swapSub":I
    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "mSIMM":Ljava/lang/String;
    const-string v2, "MSimCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSimStateChanged on sub :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSIMM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    if-nez p2, :cond_2

    .line 91
    const/4 v1, 0x1

    .line 97
    :cond_1
    :goto_1
    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$200()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    aput-object p1, v2, v1

    goto :goto_0

    .line 94
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
