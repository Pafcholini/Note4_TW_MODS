.class Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;
.super Landroid/telephony/PhoneStateListener;
.source "MSimNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneStateListener(JI)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;J)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 864
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-direct {p0, p2, p3}, Landroid/telephony/PhoneStateListener;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 924
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:J

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(J)I
    invoke-static {v2, v4, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;J)I

    move-result v1

    .line 925
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aput p1, v2, v1

    .line 927
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallStateChanged received on getPhoneId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const-string v2, "call.emergency.dial"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 932
    .local v0, "IsDialingEmergencyCall":Z
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceStateChanged DialingEmergencyCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    if-ne p1, v7, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsOneCP:Z

    if-eqz v2, :cond_1

    .line 934
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aput-boolean v7, v2, v1

    .line 935
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "onServiceStateChanged DialingEmergencyCall"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsDsdsOnlyRoaming:Z

    if-eqz v2, :cond_2

    .line 941
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshSignalIconForCTCRoamingCall()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    .line 947
    :goto_1
    return-void

    .line 937
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 943
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 944
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 945
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    goto :goto_1
.end method

.method public onDataActivity(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    .line 982
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:J

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(J)I
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;J)I

    move-result v0

    .line 984
    .local v0, "phoneId":I
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataActivity received on getPhoneId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "direction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aput p1, v1, v0

    .line 988
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iput p1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    .line 989
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 990
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 991
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 951
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:J

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(J)I
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;J)I

    move-result v0

    .line 953
    .local v0, "phoneId":I
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged received on getPhoneId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 957
    const-string v1, "StatusBar.MSimNetworkController"

    const-string v2, "!@Boot: Data SVC is acquired"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_0
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged getDefaultDataSubId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iput p1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    .line 966
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iput p2, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 967
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aput p1, v1, v0

    .line 970
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v1, :cond_1

    .line 971
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aput p1, v1, v0

    .line 972
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aput p2, v1, v0

    .line 975
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 976
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 977
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 978
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:J

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(J)I
    invoke-static {v0, v2, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;J)I

    move-result v5

    .line 882
    .local v5, "phoneId":I
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged received on getPhoneId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-nez v0, :cond_0

    .line 886
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "!@Boot: Voice SVC is acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aput-object p1, v0, v5

    .line 889
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    .line 890
    const-string v0, "ro.config.combined_signal"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    aput v1, v0, v5

    .line 898
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Combining data service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for signal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v0, :cond_2

    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_2

    .line 905
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->radioTechnologyToNetworkType(I)I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v1

    aput v1, v0, v5

    .line 906
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged radioType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 913
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 914
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 915
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    aget-boolean v1, v1, v5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    aget-boolean v3, v3, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 917
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 919
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 920
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 6
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 868
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged received on getPhoneId :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:J

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(J)I
    invoke-static {v2, v4, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "signalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:J

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(J)I
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;J)I

    move-result v1

    aput-object p1, v0, v1

    .line 874
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:J

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(J)I
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;J)I

    move-result v1

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 875
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:J

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(J)I
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 876
    return-void

    .line 868
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
