.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
.super Ljava/lang/Object;
.source "PowerResetNotiParser.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;


# static fields
.field private static final BOOT_COMPLETED:I = 0x1003

.field private static final LOG_CONTEXT_NULL:I = 0x1001

.field private static final LOG_INTENT_NULL:I = 0x1002


# instance fields
.field bootComplete:Z

.field mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->bootComplete:Z

    .line 151
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$2;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mHandler:Landroid/os/Handler;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->checkBootComplete()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private checkBootComplete()V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public final notifySensorHubResetObserver(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 129
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 130
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    .line 132
    .local v1, "observer":Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    if-eqz v1, :cond_0

    .line 133
    invoke-interface {v1, p1}, Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;->updateSensorHubResetStatus(I)V

    goto :goto_0

    .line 136
    .end local v1    # "observer":Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    :cond_1
    return-void
.end method

.method public final parse([BI)I
    .locals 7
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 64
    move v2, p2

    .line 66
    .local v2, "tmpNext":I
    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_0

    .line 67
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 68
    const/4 v3, -0x1

    .line 86
    :goto_0
    return v3

    .line 71
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "dispContextData":Landroid/os/Bundle;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v1, p1, v2

    .line 74
    .local v1, "sensorHubStatus":I
    const-string v4, "Noti"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/16 v4, -0x2b

    if-ne v1, v4, :cond_1

    .line 77
    const-string v4, "================= Noti (Power) ================="

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 78
    const-string v4, "Noti Type : SensorHub Reset"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->notifySensorHubResetObserver(I)V

    .line 81
    iget-boolean v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->bootComplete:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 82
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.contextaware.SENSORHUB_RESET"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    move v2, v3

    .line 86
    .end local v3    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    goto :goto_0
.end method

.method public final registerSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    return-void
.end method

.method public final unregisterSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    return-void
.end method
