.class public Landroid/os/CustomFrequencyManager;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;,
        Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;,
        Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;,
        Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;,
        Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;,
        Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;,
        Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;,
        Landroid/os/CustomFrequencyManager$FrequencyRequest;
    }
.end annotation


# static fields
.field public static final CPU_CORE_NUM_MAX_LIMIT:I = 0x5

.field public static final CPU_CORE_NUM_MIN_LIMIT:I = 0x4

.field public static final CPU_DISABLE_CSTATE:I = 0xc

.field private static final DEBUG:Z

.field public static final DVFS_MAX_LIMIT:I = 0x2

.field public static final DVFS_MIN_LIMIT:I = 0x1

.field public static final FREQUENCY_BUS_TYPE_BOOST_MAX_LIMIT:I = 0xb

.field public static final FREQUENCY_BUS_TYPE_BOOST_MIN_LIMIT:I = 0xa

.field public static final FREQUENCY_CPU_TYPE_BOOST_MAX_LIMIT:I = 0x7

.field public static final FREQUENCY_CPU_TYPE_BOOST_MIN_LIMIT:I = 0x6

.field public static final FREQUENCY_LCD_FRAME_RATE:I = 0x3

.field public static final FREQUENCY_MMC_TYPE_BURST_MODE:I = 0x8

.field public static final FREQUENCY_REQ_TYPE_GPU:I = 0x1

.field public static final FREQUENCY_REQ_TYPE_GPU_MAX:I = 0x9

.field private static final TAG:Ljava/lang/String; = "CustomFrequencyManager"

.field private static final lock:Ljava/lang/Object;

.field private static mContext:Landroid/content/Context;

.field private static mServerAppToken:Landroid/os/IBinder;


# instance fields
.field private infinitCPUBoostServing:Z

.field private infinitCPUCoreServing:Z

.field private infinitGPUServing:Z

.field private infinitLCDFrameReqServing:Z

.field private infinitSysBusReqServing:Z

.field mHandler:Landroid/os/Handler;

.field mHeld:Z

.field mService:Landroid/os/ICustomFrequencyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/CustomFrequencyManager;->DEBUG:Z

    .line 72
    const/4 v0, 0x0

    sput-object v0, Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;

    .line 637
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/CustomFrequencyManager;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->mHeld:Z

    .line 721
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitLCDFrameReqServing:Z

    .line 723
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitSysBusReqServing:Z

    .line 725
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitGPUServing:Z

    .line 727
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitCPUCoreServing:Z

    .line 729
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitCPUBoostServing:Z

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/os/ICustomFrequencyManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "service"    # Landroid/os/ICustomFrequencyManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->mHeld:Z

    .line 721
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitLCDFrameReqServing:Z

    .line 723
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitSysBusReqServing:Z

    .line 725
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitGPUServing:Z

    .line 727
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitCPUCoreServing:Z

    .line 729
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitCPUBoostServing:Z

    .line 87
    iput-object p1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    .line 88
    iput-object p2, p0, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p0, p1}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Exception;

    .prologue
    .line 27
    invoke-static {p0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Landroid/os/CustomFrequencyManager;->createServerAppToken()V

    return-void
.end method

.method static synthetic access$502(Landroid/os/CustomFrequencyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/os/CustomFrequencyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Landroid/os/CustomFrequencyManager;->infinitGPUServing:Z

    return p1
.end method

.method static synthetic access$602(Landroid/os/CustomFrequencyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/os/CustomFrequencyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Landroid/os/CustomFrequencyManager;->infinitSysBusReqServing:Z

    return p1
.end method

.method static synthetic access$702(Landroid/os/CustomFrequencyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/os/CustomFrequencyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Landroid/os/CustomFrequencyManager;->infinitLCDFrameReqServing:Z

    return p1
.end method

.method static synthetic access$802(Landroid/os/CustomFrequencyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/os/CustomFrequencyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Landroid/os/CustomFrequencyManager;->infinitCPUCoreServing:Z

    return p1
.end method

.method static synthetic access$902(Landroid/os/CustomFrequencyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/os/CustomFrequencyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Landroid/os/CustomFrequencyManager;->infinitCPUBoostServing:Z

    return p1
.end method

.method private static declared-synchronized createServerAppToken()V
    .locals 2

    .prologue
    .line 278
    const-class v1, Landroid/os/CustomFrequencyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_0
    monitor-exit v1

    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 732
    sget-boolean v0, Landroid/os/CustomFrequencyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 733
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_0
    return-void
.end method

.method private newFrequencyRequest(IIJLjava/lang/String;)Landroid/os/CustomFrequencyManager$FrequencyRequest;
    .locals 7
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "timeout"    # J
    .param p5, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 653
    const-string v0, "CustomFrequencyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newFrequencyRequest  - mFrequency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTimeoutMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 656
    :cond_0
    new-instance v0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 670
    :goto_0
    return-object v0

    .line 657
    :cond_1
    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 658
    :cond_2
    new-instance v0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 660
    new-instance v0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_4
    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    .line 662
    :cond_5
    new-instance v0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_0

    .line 663
    :cond_6
    const/4 v0, 0x7

    if-eq p1, v0, :cond_7

    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    .line 664
    :cond_7
    new-instance v0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_8
    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    .line 666
    new-instance v0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_0

    .line 667
    :cond_9
    const/16 v0, 0xc

    if-ne p1, v0, :cond_a

    .line 668
    new-instance v0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_0

    .line 670
    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static printExceptionTrace(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 78
    sget-boolean v0, Landroid/os/CustomFrequencyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteBatteryStatsDataBase()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 833
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 842
    :goto_0
    return v1

    .line 838
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->deleteBatteryStatsDatabase()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem returning batteryStats : e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBatteryDeltaSum(I)I
    .locals 5
    .param p1, "what"    # I

    .prologue
    const/4 v1, 0x0

    .line 847
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 856
    :goto_0
    return v1

    .line 852
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, p1}, Landroid/os/ICustomFrequencyManager;->getBatteryDeltaSum(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem returning batteryStats : e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBatteryRemainingUsageTime(I)I
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, -0x1

    .line 804
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 813
    :goto_0
    return v1

    .line 809
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, p1}, Landroid/os/ICustomFrequencyManager;->getBatteryRemainingUsageTime(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem returning RemainingUsageTime : e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBatteryStatistics(I)[B
    .locals 5
    .param p1, "what"    # I

    .prologue
    const/4 v1, 0x0

    .line 818
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 827
    :goto_0
    return-object v1

    .line 823
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, p1}, Landroid/os/ICustomFrequencyManager;->getBatteryStatistics(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem returning batteryStats : e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBatteryTotalCapacity()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 861
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 869
    :goto_0
    return v1

    .line 865
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getBatteryTotalCapacity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem getting battery total capacity : e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 888
    const/4 v1, 0x0

    .line 890
    .local v1, "policyIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, p1}, Landroid/os/ICustomFrequencyManager;->getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 894
    :goto_0
    return-object v1

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getFrequentlyUsedAppListByLocation(DDI)[Ljava/lang/String;
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "numOfItems"    # I

    .prologue
    .line 943
    const/4 v0, 0x0

    .line 945
    .local v0, "result":[Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/os/ICustomFrequencyManager;->getFrequentlyUsedAppListByLocation(DDI)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 950
    :cond_0
    :goto_0
    return-object v0

    .line 948
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getGameThrottlingLevel()I
    .locals 2

    .prologue
    .line 919
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 920
    const/4 v0, 0x0

    .line 928
    :goto_0
    return v0

    .line 923
    :cond_0
    const/4 v0, 0x0

    .line 925
    .local v0, "level":I
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getGameThrottlingLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 926
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSavedTimeAfterKillingApp(Ljava/lang/String;)J
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 874
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 883
    :goto_0
    return-wide v2

    .line 877
    :cond_0
    const-string v1, "CustomFrequencyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSavedTimeAfterKilling called: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->getSavedTimeAfterKillingApp(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomFrequencyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "problem returning saved time : e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStandbyTimeInPowerSavingMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 116
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 124
    :goto_0
    return v1

    .line 121
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInPowerSavingMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getStandbyTimeInUltraPowerSavingMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 99
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 107
    :goto_0
    return v1

    .line 104
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInUltraPowerSavingMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getSupportedCPUCoreNum()[I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 137
    :goto_0
    return-object v1

    .line 134
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getSupportedCPUCoreNum()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getSupportedCPUFrequency()[I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 176
    :goto_0
    return-object v1

    .line 173
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getSupportedCPUFrequency()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getSupportedGPUFrequency()[I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 150
    :goto_0
    return-object v1

    .line 147
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getSupportedGPUFrequency()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getSupportedLCDFrequency()[I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 189
    :goto_0
    return-object v1

    .line 186
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getSupportedLCDFrequency()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getSupportedSysBusFrequency()[I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 163
    :goto_0
    return-object v1

    .line 160
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getSupportedSysBusFrequency()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public mpdUpdate(I)V
    .locals 4
    .param p1, "mpEnable"    # I

    .prologue
    .line 704
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 713
    :goto_0
    return-void

    .line 708
    :cond_0
    :try_start_0
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in manager mpUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->mpdUpdate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;
    .locals 3
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "timeout"    # J
    .param p5, "pkgName"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 643
    sget-object v2, Landroid/os/CustomFrequencyManager;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 644
    :try_start_0
    sput-object p6, Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;

    .line 645
    invoke-direct/range {p0 .. p5}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v0

    .line 646
    .local v0, "req":Landroid/os/CustomFrequencyManager$FrequencyRequest;
    const/4 v1, 0x0

    sput-object v1, Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;

    .line 647
    monitor-exit v2

    .line 648
    return-object v0

    .line 647
    .end local v0    # "req":Landroid/os/CustomFrequencyManager$FrequencyRequest;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyWmAniationState(JZ)V
    .locals 3
    .param p1, "currentTime"    # J
    .param p3, "isStart"    # Z

    .prologue
    .line 739
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 747
    :goto_0
    return-void

    .line 743
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/ICustomFrequencyManager;->notifyWmAniationState(JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 745
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onTopAppChanged(Z)V
    .locals 3
    .param p1, "isTopFullscreen"    # Z

    .prologue
    .line 675
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 687
    :goto_0
    return-void

    .line 679
    :cond_0
    if-eqz p1, :cond_1

    .line 680
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    const-string v2, "--Nw 2.4 --Tw 150 --Ns 1.4 --Ts 100 --util_h 100 --util_l 0"

    invoke-interface {v1, v2}, Landroid/os/ICustomFrequencyManager;->requestMpParameterUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 682
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    const-string v2, "--Nw 1.99 --Tw 140 --Ns 1.1 --Ts 190 --util_h 70 --util_l 60"

    invoke-interface {v1, v2}, Landroid/os/ICustomFrequencyManager;->requestMpParameterUpdate(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public requestCPUUpdate(II)V
    .locals 4
    .param p1, "cpu"    # I
    .param p2, "enable"    # I

    .prologue
    .line 691
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 700
    :goto_0
    return-void

    .line 695
    :cond_0
    :try_start_0
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in manager requestCPUUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1, p2}, Landroid/os/ICustomFrequencyManager;->requestCPUUpdate(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public reviewPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "Packagename"    # Ljava/lang/String;

    .prologue
    .line 770
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 779
    :goto_0
    return-void

    .line 775
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1, p2}, Landroid/os/ICustomFrequencyManager;->reviewPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 758
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 766
    :goto_0
    return-void

    .line 762
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1, p2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setGameFps(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 910
    :try_start_0
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->setGameFps(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 913
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setGamePowerSaving(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 900
    :try_start_0
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->setGamePowerSaving(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 903
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setGameTurboMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 934
    :try_start_0
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->setGameTurboMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 937
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setHglPolicy(Ljava/lang/String;)V
    .locals 2
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 783
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 792
    :goto_0
    return-void

    .line 788
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->setHglPolicy(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
