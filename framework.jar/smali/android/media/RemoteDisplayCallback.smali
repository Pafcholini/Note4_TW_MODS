.class public final Landroid/media/RemoteDisplayCallback;
.super Ljava/lang/Object;
.source "RemoteDisplayCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteDisplayCallback$1;,
        Landroid/media/RemoteDisplayCallback$Listener;,
        Landroid/media/RemoteDisplayCallback$WfdStateReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteDisplayCallback"

.field private static mAudioManager:Landroid/media/AudioManager; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mCpuBooster:Landroid/os/DVFSHelper; = null

.field private static mCpuLockEnabled:Z = false

.field private static final mDefaultFreq:I = 0xf4240

.field private static mDongleVer:Ljava/lang/String;

.field private static mHdcpSuspend:Z

.field private static mIsVideoCase:Z

.field private static mListener:Landroid/media/RemoteDisplayCallback$Listener;

.field private static mRemoteIP:Ljava/lang/String;

.field private static mRenameCapablity:Z

.field private static mUibcAvailable:Z

.field private static mUibcSinkVer:Ljava/lang/String;

.field private static mUpdateURL:Ljava/lang/String;

.field private static mWfdMode:I


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStreamVol:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    .line 51
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    .line 55
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    .line 57
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 58
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mRenameCapablity:Z

    .line 59
    sput v1, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    .line 60
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    .line 63
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mHdcpSuspend:Z

    .line 66
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mUibcAvailable:Z

    .line 67
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mUibcSinkVer:Ljava/lang/String;

    .line 71
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 72
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    .line 74
    iput-object v2, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.MAR_SLAVE_SMB"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    new-instance v1, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;

    invoke-direct {v1, p0, v2}, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;-><init>(Landroid/media/RemoteDisplayCallback;Landroid/media/RemoteDisplayCallback$1;)V

    iput-object v1, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    return-void
.end method

.method private StartHDCPSuspend()V
    .locals 4

    .prologue
    .line 350
    const-string v2, "RemoteDisplayCallback"

    const-string v3, "StartHDCPSuspend"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 353
    .local v0, "r":Landroid/content/res/Resources;
    const v2, 0x10407eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 354
    .local v1, "title":Ljava/lang/String;
    const-string/jumbo v2, "sus"

    invoke-direct {p0, v2, v1}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    return-void
.end method

.method static synthetic access$100()Landroid/media/RemoteDisplayCallback$Listener;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 48
    sget v0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 48
    sput p0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    return p0
.end method

.method static synthetic access$400(Landroid/media/RemoteDisplayCallback;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;

    .prologue
    .line 48
    iget v0, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    return v0
.end method

.method static synthetic access$402(Landroid/media/RemoteDisplayCallback;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    return v0
.end method

.method static synthetic access$600()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private broadcastDongleUpdateUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "Url"    # Ljava/lang/String;

    .prologue
    .line 327
    const-string v1, "RemoteDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDongleUpdateUrl << Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 331
    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 334
    return-void
.end method

.method private broadcastDongleVerToFota(Ljava/lang/String;)V
    .locals 4
    .param p1, "Ver"    # Ljava/lang/String;

    .prologue
    .line 311
    const-string v1, "RemoteDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDongleVerToFota << Ver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.START_WFD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 317
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 321
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    return-void
.end method

.method private broadcastWfdConnectionType(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 338
    const-string v1, "RemoteDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastWfdConnectionType mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 342
    const-string v1, "CONNECTION_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 345
    return-void
.end method

.method private lockCPUFreq(I)V
    .locals 9
    .param p1, "minLockFreq"    # I

    .prologue
    .line 126
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 135
    new-instance v5, Landroid/os/DVFSHelper;

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    const/16 v7, 0xc

    invoke-direct {v5, v6, v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 137
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v5, :cond_2

    .line 138
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v4

    .line 139
    .local v4, "supportedCPUFreqTable":[I
    const/4 v3, 0x0

    .line 141
    .local v3, "minIdx":I
    if-eqz v4, :cond_2

    .line 142
    const/4 v5, 0x0

    aget v5, v4, v5

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 143
    .local v2, "min":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 144
    aget v5, v4, v1

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v2, v5, :cond_0

    .line 145
    aget v5, v4, v1

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 146
    move v3, v1

    .line 143
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v6, "CPU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :try_start_0
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_1
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WFD lock DVFS_MIN_LIMIT :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v5, 0x1

    sput-boolean v5, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    .line 163
    .end local v1    # "i":I
    .end local v2    # "min":I
    .end local v3    # "minIdx":I
    .end local v4    # "supportedCPUFreqTable":[I
    :cond_2
    return-void

    .line 154
    .restart local v1    # "i":I
    .restart local v2    # "min":I
    .restart local v3    # "minIdx":I
    .restart local v4    # "supportedCPUFreqTable":[I
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "RemoteDisplayCallback"

    const-string v6, "cpuBooster.acquire is failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private sendCmd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 189
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 192
    .local v1, "mParam":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    .line 198
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    const/4 v1, 0x0

    .line 200
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;Landroid/media/RemoteDisplayCallback$Listener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/media/RemoteDisplayCallback$Listener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 83
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 84
    sput-object p0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    .line 87
    :cond_0
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 88
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    .line 91
    :cond_1
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-nez v0, :cond_2

    .line 92
    sput-object p1, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    .line 95
    :cond_2
    sput-object v2, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    .line 96
    sput-object v2, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    .line 98
    sput-object v2, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 99
    sput v3, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    .line 101
    sput-boolean v3, Landroid/media/RemoteDisplayCallback;->mHdcpSuspend:Z

    .line 103
    const-string v0, "RemoteDisplayCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mContext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAudioManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method private unlockCPUFreq()V
    .locals 3

    .prologue
    .line 166
    sget-boolean v1, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 176
    :try_start_0
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 182
    const-string v1, "RemoteDisplayCallback"

    const-string v2, "Wfd release DVFS_MIN_LIMIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v1, 0x0

    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    .line 185
    :cond_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RemoteDisplayCallback"

    const-string/jumbo v2, "mDVFSLock.release is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isDongleRenameAvailable()Z
    .locals 1

    .prologue
    .line 205
    sget-boolean v0, Landroid/media/RemoteDisplayCallback;->mRenameCapablity:Z

    return v0
.end method

.method public onNoti(ILjava/lang/String;)V
    .locals 10
    .param p1, "msg"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 376
    const-string v6, "RemoteDisplayCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onNoti << msg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sparse-switch p1, :sswitch_data_0

    .line 533
    const-string v6, "RemoteDisplayCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "check!! << msg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 380
    :sswitch_1
    const-string v6, "RemoteDisplayCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 383
    .local v3, "mNoti":Lorg/json/JSONObject;
    const-string/jumbo v6, "remoteIP"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    .line 385
    const-string/jumbo v6, "sink_ver"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 386
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    const-string v7, "AA00"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 387
    const/4 v6, 0x0

    sput-object v6, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 389
    :cond_1
    const-string/jumbo v6, "wlan.wfd.dongle"

    sget-object v7, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string/jumbo v6, "renameAvailable"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Landroid/media/RemoteDisplayCallback;->mRenameCapablity:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v3    # "mNoti":Lorg/json/JSONObject;
    :goto_1
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/media/RemoteDisplayCallback;->broadcastDongleVerToFota(Ljava/lang/String;)V

    .line 400
    sget-boolean v6, Landroid/media/RemoteDisplayCallback;->mHdcpSuspend:Z

    if-eqz v6, :cond_2

    .line 401
    invoke-direct {p0}, Landroid/media/RemoteDisplayCallback;->StartHDCPSuspend()V

    .line 406
    :cond_2
    const-string v6, "RemoteDisplayCallback"

    const-string v7, "WFD client connected broadcast sent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 424
    .end local v0    # "e":Lorg/json/JSONException;
    :sswitch_2
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    .line 425
    sget v5, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    .line 426
    .local v5, "prevWfdMode":I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    .line 427
    if-nez v5, :cond_4

    sget v6, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    if-ne v6, v9, :cond_4

    .line 428
    sput-boolean v9, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    .line 432
    :goto_2
    const-string v6, "RemoteDisplayCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onNoti received : WFD_NOTI_TO_APP_TRANSPORT_MODE, prevWfdMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mWfdMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mIsVideoCase = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    sget v6, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    if-ne v6, v9, :cond_7

    .line 434
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    sget-boolean v6, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    if-eqz v6, :cond_5

    .line 435
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v6, :cond_0

    .line 436
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v6}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V

    goto/16 :goto_0

    .line 430
    :cond_4
    const/4 v6, 0x0

    sput-boolean v6, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    goto :goto_2

    .line 441
    :cond_5
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v6, :cond_6

    .line 442
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    iput v6, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    .line 444
    :cond_6
    const-string v6, "RemoteDisplayCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get native STREAM_MUSIC volume :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string v6, "RemoteDisplayCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "send command: curr stream vol @ tcp start! << "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string/jumbo v6, "vol"

    iget v7, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    :cond_7
    sget v6, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    invoke-direct {p0, v6}, Landroid/media/RemoteDisplayCallback;->broadcastWfdConnectionType(I)V

    .line 453
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v6, :cond_0

    .line 454
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    sget v7, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    invoke-interface {v6, v7}, Landroid/media/RemoteDisplayCallback$Listener;->onTransportChanged(I)V

    goto/16 :goto_0

    .line 464
    .end local v5    # "prevWfdMode":I
    :sswitch_3
    const-string v6, "RemoteDisplayCallback"

    const-string v7, "Noti2App_UIBC Data: "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 467
    .local v4, "mUibcNoti":Lorg/json/JSONObject;
    const-string v6, "UibcAvailable"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Landroid/media/RemoteDisplayCallback;->mUibcAvailable:Z

    .line 468
    const-string v6, "RemoteDisplayCallback"

    const-string v7, "Calling starStopUIBCVirtualSoftkey"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-boolean v6, Landroid/media/RemoteDisplayCallback;->mUibcAvailable:Z

    invoke-virtual {p0, v6}, Landroid/media/RemoteDisplayCallback;->startStopUIBCVirtualSoftkey(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 474
    .end local v4    # "mUibcNoti":Lorg/json/JSONObject;
    :goto_3
    const-string v6, "RemoteDisplayCallback"

    const-string v7, "BroadCast UIBC Data"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 470
    :catch_1
    move-exception v0

    .line 471
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v6, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 477
    .end local v0    # "e":Lorg/json/JSONException;
    :sswitch_4
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    .line 479
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 480
    .restart local v3    # "mNoti":Lorg/json/JSONObject;
    const-string v6, "SinkFwUrl"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 484
    .end local v3    # "mNoti":Lorg/json/JSONObject;
    :goto_4
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/media/RemoteDisplayCallback;->broadcastDongleUpdateUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 481
    :catch_2
    move-exception v0

    .line 482
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v6, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 489
    .end local v0    # "e":Lorg/json/JSONException;
    :sswitch_5
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    .line 490
    const-string v6, "RemoteDisplayCallback"

    const-string v7, "WFD noti to App - weak network connection.."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v6, :cond_0

    .line 492
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v6}, Landroid/media/RemoteDisplayCallback$Listener;->onWeakNetwork()V

    goto/16 :goto_0

    .line 498
    :sswitch_6
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    .line 499
    const/4 v2, 0x0

    .line 501
    .local v2, "level":I
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 502
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v6, "level"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    .line 507
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_5
    const-string v6, "RemoteDisplayCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WFD noti to App - update QoS level : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v6, :cond_0

    .line 510
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v6, v2}, Landroid/media/RemoteDisplayCallback$Listener;->onQoSLevelChanged(I)V

    goto/16 :goto_0

    .line 503
    :catch_3
    move-exception v0

    .line 504
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v6, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 516
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "level":I
    :sswitch_7
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    .line 517
    const-string v6, "RemoteDisplayCallback"

    const-string v7, "WFD noti to App - WFD_NOTI_TO_APP_HEADSET_CONNECTED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v6, :cond_0

    .line 519
    sget-object v6, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v6}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V

    goto/16 :goto_0

    .line 378
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x7 -> :sswitch_2
        0x9 -> :sswitch_3
        0x14 -> :sswitch_4
        0x1e -> :sswitch_5
        0x28 -> :sswitch_6
        0x32 -> :sswitch_7
        0x64 -> :sswitch_0
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string v0, "RemoteDisplayCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string/jumbo v0, "res"

    invoke-direct {p0, v0, p1}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public startStopUIBCVirtualSoftkey(Z)V
    .locals 6
    .param p1, "isStart"    # Z

    .prologue
    .line 360
    const-string v3, "RemoteDisplayCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startStopUIBCVirtualSoftkey() isStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.uibcvirtualsoftkey"

    const-string v4, "com.sec.android.uibcvirtualsoftkey.UIBCVirtualSoftkeyService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.UIBCVIRTUALSOFTKEY_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 364
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "Start"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 365
    sget-object v3, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 364
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 366
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "RemoteDisplayCallback"

    const-string v4, "Exception showHideUIBCVirtualSoftkey() : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
