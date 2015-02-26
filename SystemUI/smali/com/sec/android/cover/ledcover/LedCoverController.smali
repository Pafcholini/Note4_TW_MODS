.class public Lcom/sec/android/cover/ledcover/LedCoverController;
.super Lcom/sec/android/cover/BaseCoverController;
.source "LedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;,
        Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;
    }
.end annotation


# static fields
.field public static final LED_COMMAND_ALARM:I = 0xd

.field public static final LED_COMMAND_BATTERY_CHARGING:I = 0xa

.field public static final LED_COMMAND_BATTERY_CHARGING_END:I = 0xb

.field public static final LED_COMMAND_BRIGHTNESS:I = 0x11

.field public static final LED_COMMAND_CALL_END:I = 0xc

.field public static final LED_COMMAND_CLOCK:I = 0x1

.field public static final LED_COMMAND_INCOMING_CALL:I = 0x4

.field public static final LED_COMMAND_LED_OFF:I = 0xf

.field public static final LED_COMMAND_LED_ON:I = 0xe

.field public static final LED_COMMAND_LOW_BATTERY_ALERT:I = 0x7

.field public static final LED_COMMAND_MISSED_CALL_MSG:I = 0x2

.field public static final LED_COMMAND_MUSIC:I = 0x5

.field public static final LED_COMMAND_PEDOMETER:I = 0x8

.field public static final LED_COMMAND_POWER_ON_OFF:I = 0x6

.field public static final LED_COMMAND_REQ_LED_STATUS:I = 0x9

.field public static final LED_COMMAND_VOLUME:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ALARM_EXPIRED:I

.field private final ALARM_EXPIRE_TIME_DURATION:J

.field private final INTENT_ACTION_ALARM_ALERT:Ljava/lang/String;

.field private final INTENT_ACTION_ALARM_START_ALERT:Ljava/lang/String;

.field private final INTENT_ACTION_ALARM_STOP_ALERT:Ljava/lang/String;

.field private final INTENT_ACTION_CALL_ENDED:Ljava/lang/String;

.field private final INTENT_ACTION_PHONESTATE:Ljava/lang/String;

.field private final INTENT_ACTION_SPLANNER:Ljava/lang/String;

.field private final INTENT_ACTION_TIMER:Ljava/lang/String;

.field private final INTENT_ACTION_VOLUME_CHANGED:Ljava/lang/String;

.field private isBatteryCharging:Z

.field private isIncomingCallStatus:Z

.field private isScreenOn:Z

.field private mAlarmStartTime:J

.field private mAlarmTimerHandler:Landroid/os/Handler;

.field private mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private final nullContent:[B

.field private prevCallSatus:I

.field private strIntentAction:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 212
    invoke-direct {p0, p1}, Lcom/sec/android/cover/BaseCoverController;-><init>(Landroid/content/Context;)V

    .line 56
    new-array v0, v2, [B

    aput-byte v3, v0, v3

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->nullContent:[B

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 64
    iput v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->ALARM_EXPIRED:I

    .line 65
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->ALARM_EXPIRE_TIME_DURATION:J

    .line 67
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->INTENT_ACTION_VOLUME_CHANGED:Ljava/lang/String;

    .line 68
    const-string v0, "android.intent.action.PHONE_STATE"

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->INTENT_ACTION_PHONESTATE:Ljava/lang/String;

    .line 69
    const-string v0, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->INTENT_ACTION_ALARM_ALERT:Ljava/lang/String;

    .line 70
    const-string v0, "com.samsung.sec.android.clockpackage.alarm.ALARM_STARTED_IN_ALERT"

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->INTENT_ACTION_ALARM_START_ALERT:Ljava/lang/String;

    .line 71
    const-string v0, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOPPED_IN_ALERT"

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->INTENT_ACTION_ALARM_STOP_ALERT:Ljava/lang/String;

    .line 72
    const-string v0, "com.sec.android.app.clockpackage.timer.REMOTE_TIMER_FINISH"

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->INTENT_ACTION_TIMER:Ljava/lang/String;

    .line 73
    const-string v0, "com.sec.android.phone.action.ACTION_CALL_ENDED"

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->INTENT_ACTION_CALL_ENDED:Ljava/lang/String;

    .line 74
    const-string v0, "com.android.calendar.SEND_ALERTINFO_ACTION"

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->INTENT_ACTION_SPLANNER:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/sec/android/cover/ledcover/LedCoverController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/cover/ledcover/LedCoverController$1;-><init>(Lcom/sec/android/cover/ledcover/LedCoverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    .line 94
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.intent.action.TIME_TICK"

    aput-object v1, v0, v3

    const-string v1, "android.intent.action.TIME_SET"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "android.intent.action.SCREEN_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.intent.action.BATTERY_LOW"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.intent.action.PHONE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_STARTED_IN_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOPPED_IN_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.sec.android.app.clockpackage.timer.REMOTE_TIMER_FINISH"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.sec.android.phone.action.ACTION_CALL_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.android.calendar.SEND_ALERTINFO_ACTION"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->strIntentAction:[Ljava/lang/String;

    .line 121
    iput-boolean v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isScreenOn:Z

    .line 122
    iput-boolean v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    .line 123
    iput-boolean v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isBatteryCharging:Z

    .line 125
    sget-object v0, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmStartTime:J

    .line 127
    sget-object v0, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->STOPPED:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    .line 129
    new-instance v0, Lcom/sec/android/cover/ledcover/LedCoverController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/ledcover/LedCoverController$2;-><init>(Lcom/sec/android/cover/ledcover/LedCoverController;)V

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 135
    new-instance v0, Lcom/sec/android/cover/ledcover/LedCoverController$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/ledcover/LedCoverController$3;-><init>(Lcom/sec/android/cover/ledcover/LedCoverController;)V

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    iput-object p2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mRootView:Landroid/widget/FrameLayout;

    .line 215
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 216
    invoke-virtual {p0, v3}, Lcom/sec/android/cover/ledcover/LedCoverController;->updateMissedEvent(Z)V

    .line 218
    new-instance v0, Lcom/sec/android/cover/ledcover/LedCoverMainFrameView;

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/cover/ledcover/LedCoverMainFrameView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    .line 220
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 223
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/ledcover/LedCoverController;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/LedCoverController;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/ledcover/LedCoverController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/LedCoverController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/cover/ledcover/LedCoverController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/LedCoverController;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/ledcover/LedCoverController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/LedCoverController;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/LedCoverController;->processCallEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/cover/ledcover/LedCoverController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/LedCoverController;

    .prologue
    .line 35
    iget v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->prevCallSatus:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/cover/ledcover/LedCoverController;)Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/LedCoverController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/cover/ledcover/LedCoverController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/LedCoverController;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendEndCallInformation(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/ledcover/LedCoverController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/LedCoverController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/ledcover/LedCoverController;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/LedCoverController;
    .param p1, "x1"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/LedCoverController;->updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/ledcover/LedCoverController;)Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/LedCoverController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/cover/ledcover/LedCoverController;Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;)Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/LedCoverController;
    .param p1, "x1"    # Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/cover/ledcover/LedCoverController;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/LedCoverController;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/sec/android/cover/ledcover/LedCoverController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/LedCoverController;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isScreenOn:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/cover/ledcover/LedCoverController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/LedCoverController;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isScreenOn:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/cover/ledcover/LedCoverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/LedCoverController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendCommandByPriority()V

    return-void
.end method

.method static synthetic access$902(Lcom/sec/android/cover/ledcover/LedCoverController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/LedCoverController;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isBatteryCharging:Z

    return p1
.end method

.method private getLastBatteryInformation()I
    .locals 4

    .prologue
    .line 697
    iget-object v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverBroadcastManager;

    move-result-object v2

    .line 701
    .local v2, "bcm":Lcom/sec/android/cover/manager/CoverBroadcastManager;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getLastBroadcastInfo(Ljava/lang/String;)Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    move-result-object v1

    .line 703
    .local v1, "bcInfo":Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    instance-of v3, v3, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    if-nez v3, :cond_1

    .line 704
    :cond_0
    const/4 v3, 0x0

    .line 708
    :goto_0
    return v3

    .line 707
    :cond_1
    iget-object v0, v1, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .line 708
    .local v0, "batteryStatus":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;
    iget v3, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    goto :goto_0
.end method

.method private getLedCommandStr(I)Ljava/lang/String;
    .locals 3
    .param p1, "command"    # I

    .prologue
    .line 633
    const-string v0, ""

    .line 634
    .local v0, "cmdStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 684
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    :goto_0
    return-object v0

    .line 636
    :pswitch_1
    const-string v0, "CLOCK"

    .line 637
    goto :goto_0

    .line 639
    :pswitch_2
    const-string v0, "MISSED_CALL_MSG"

    .line 640
    goto :goto_0

    .line 642
    :pswitch_3
    const-string v0, "VOLUME"

    .line 643
    goto :goto_0

    .line 645
    :pswitch_4
    const-string v0, "INCOMING_CALL"

    .line 646
    goto :goto_0

    .line 648
    :pswitch_5
    const-string v0, "MUSIC"

    .line 649
    goto :goto_0

    .line 651
    :pswitch_6
    const-string v0, "POWER_ON_OFF"

    .line 652
    goto :goto_0

    .line 654
    :pswitch_7
    const-string v0, "LOW_BATTERY_ALERT"

    .line 655
    goto :goto_0

    .line 657
    :pswitch_8
    const-string v0, "PEDOMETER"

    .line 658
    goto :goto_0

    .line 660
    :pswitch_9
    const-string v0, "REQ_LED_STATUS"

    .line 661
    goto :goto_0

    .line 663
    :pswitch_a
    const-string v0, "BATTERY_CHARGING"

    .line 664
    goto :goto_0

    .line 666
    :pswitch_b
    const-string v0, "BATTERY_CHARGING_END"

    .line 667
    goto :goto_0

    .line 669
    :pswitch_c
    const-string v0, "CALL_END"

    .line 670
    goto :goto_0

    .line 672
    :pswitch_d
    const-string v0, "ALARM"

    .line 673
    goto :goto_0

    .line 675
    :pswitch_e
    const-string v0, "LED_ON"

    .line 676
    goto :goto_0

    .line 678
    :pswitch_f
    const-string v0, "LED_OFF"

    .line 679
    goto :goto_0

    .line 681
    :pswitch_10
    const-string v0, "LED_BRIGHTNESS"

    .line 682
    goto :goto_0

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public static intTo2ByteArray(I)[B
    .locals 3
    .param p0, "a"    # I

    .prologue
    .line 691
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private processCallEvent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 712
    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "state":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 743
    :goto_0
    return-void

    .line 718
    :cond_0
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 719
    iput-boolean v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    .line 720
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendCallInformation(Landroid/content/Intent;)V

    .line 722
    iput v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->prevCallSatus:I

    goto :goto_0

    .line 724
    :cond_1
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 725
    iput-boolean v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    .line 727
    iget v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->prevCallSatus:I

    if-ne v1, v4, :cond_2

    .line 733
    :goto_1
    iput v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->prevCallSatus:I

    goto :goto_0

    .line 730
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->nullContent:[B

    invoke-direct {p0, v5, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    goto :goto_1

    .line 735
    :cond_3
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 736
    iput-boolean v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    .line 737
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->nullContent:[B

    invoke-direct {p0, v5, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    .line 738
    iput v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->prevCallSatus:I

    goto :goto_0

    .line 740
    :cond_4
    iput-boolean v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    .line 741
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->prevCallSatus:I

    goto :goto_0
.end method

.method private requestRemoteViews()V
    .locals 3

    .prologue
    .line 793
    sget-object v1, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "requestRemoteViews : Requesting latest remote views to apps.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 795
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 796
    return-void
.end method

.method private sendCommandByPriority()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0, v2}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendCallInformation(Landroid/content/Intent;)V

    .line 240
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v1, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-eq v0, v1, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendAlarmInformation()V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendMissedEventInformation()Z

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    sget-object v1, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->PLAYING:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    if-ne v0, v1, :cond_3

    .line 234
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendMusicPlayerInformation()V

    goto :goto_0

    .line 235
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isBatteryCharging:Z

    if-eqz v0, :cond_4

    .line 236
    invoke-virtual {p0, v2}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendBatteryChargingInformation(Landroid/content/Intent;)V

    goto :goto_0

    .line 238
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendClockInformation()V

    goto :goto_0
.end method

.method private sendEndCallInformation(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 746
    const-string v2, "calldurationmillis"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "strCallTime":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 749
    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strCallTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 751
    .local v1, "timeData":[B
    const/16 v2, 0xc

    invoke-direct {p0, v2, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    .line 755
    .end local v1    # "timeData":[B
    :goto_0
    return-void

    .line 753
    :cond_0
    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    const-string v3, "call duration info is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendLedData(I[B)V
    .locals 5
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 614
    sget-object v1, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendLedData : command = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/LedCoverController;->getLedCommandStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    if-nez p2, :cond_0

    .line 616
    const/4 v1, 0x1

    new-array p2, v1, [B

    .line 617
    aput-byte v4, p2, v4

    .line 621
    :cond_0
    const/16 v1, 0xf

    if-ne p1, v1, :cond_2

    .line 622
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/cover/ScoverManager;->sendDataToCover(I[B)V

    .line 630
    :cond_1
    :goto_0
    return-void

    .line 623
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->isCoverOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 624
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/cover/ScoverManager;->sendDataToCover(I[B)V

    .line 625
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->nullContent:[B

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->sendDataToCover(I[B)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "ue":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendMusicPlayerInformation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 459
    new-array v0, v4, [B

    aput-byte v3, v0, v3

    .line 462
    .local v0, "content":[B
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->PLAYING:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    if-ne v1, v2, :cond_2

    .line 463
    aput-byte v4, v0, v3

    .line 468
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-ne v1, v2, :cond_1

    .line 469
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    .line 471
    :cond_1
    return-void

    .line 464
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->PAUSED:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    if-ne v1, v2, :cond_0

    .line 465
    const/4 v1, 0x2

    aput-byte v1, v0, v3

    goto :goto_0
.end method

.method private updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 11
    .param p1, "info"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    const/4 v10, 0x1

    .line 475
    iget-object v4, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    .line 476
    .local v4, "type":Ljava/lang/String;
    sget-object v5, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRemoteViewUpdated : Type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v5, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v6, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-eq v5, v6, :cond_1

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 481
    .local v2, "curTime":J
    iget-wide v6, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmStartTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    iget-wide v6, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmStartTime:J

    sub-long v6, v2, v6

    const-wide/32 v8, 0xea60

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 482
    :cond_0
    sget-object v5, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    iput-object v5, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    .line 483
    sget-object v5, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    const-string v6, "Reset alarm type to NONE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .end local v2    # "curTime":J
    :cond_1
    const-string v5, "new_message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "missed_call"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 488
    :cond_2
    invoke-virtual {p0, v10}, Lcom/sec/android/cover/ledcover/LedCoverController;->updateMissedEvent(Z)V

    .line 508
    :cond_3
    :goto_0
    return-void

    .line 489
    :cond_4
    const-string v5, "music_controller"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 491
    iget-object v5, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIntent:Landroid/content/Intent;

    const-string v6, "playstate"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 492
    .local v1, "playstate":I
    iget-object v5, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIntent:Landroid/content/Intent;

    const-string v6, "playstatechanged"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 494
    .local v0, "bPlayStateChanged":Z
    if-nez v1, :cond_5

    .line 495
    sget-object v5, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->PLAYING:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    iput-object v5, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    .line 496
    if-eqz v0, :cond_3

    .line 497
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendMusicPlayerInformation()V

    goto :goto_0

    .line 499
    :cond_5
    if-ne v1, v10, :cond_6

    .line 500
    sget-object v5, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->PAUSED:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    iput-object v5, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    .line 501
    if-eqz v0, :cond_3

    .line 502
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendMusicPlayerInformation()V

    goto :goto_0

    .line 505
    :cond_6
    sget-object v5, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->STOPPED:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    iput-object v5, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    goto :goto_0
.end method


# virtual methods
.method public cancelAlarmTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 772
    sget-object v0, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "cancelAlarmTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 776
    :cond_0
    return-void
.end method

.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 550
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    .line 552
    iget-object v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v3, v4}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 554
    iget-object v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v3, :cond_0

    .line 555
    iget-object v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v3, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 558
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->requestRemoteViews()V

    .line 559
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 560
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->strIntentAction:[Ljava/lang/String;

    array-length v2, v3

    .line 562
    .local v2, "lenAction":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 563
    iget-object v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->strIntentAction:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 568
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendClockInformation()V

    .line 569
    return-void
.end method

.method public onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 575
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 577
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 585
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V

    .line 586
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 590
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 592
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 597
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->resetAlarmType()V

    .line 598
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    .line 599
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    .line 609
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 611
    :cond_2
    return-void

    .line 601
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendCurrentBrightnessGrade()V

    .line 602
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendCommandByPriority()V

    .line 603
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->coverEventFinished()V

    .line 605
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->goToSleep()V

    goto :goto_0
.end method

.method public resetAlarmTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 779
    sget-object v0, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "resetAlarmTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->acquireWakeLock()V

    .line 782
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    .line 783
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 785
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 790
    return-void
.end method

.method protected resetAlarmType()V
    .locals 2

    .prologue
    .line 390
    sget-object v0, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmStartTime:J

    .line 397
    return-void
.end method

.method protected sendAlarmInformation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 415
    new-array v0, v4, [B

    aput-byte v3, v0, v3

    .line 420
    .local v0, "content":[B
    iget-boolean v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-ne v1, v2, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->ALARM:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-ne v1, v2, :cond_2

    .line 425
    aput-byte v4, v0, v3

    .line 433
    :goto_1
    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    goto :goto_0

    .line 426
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->TIMER:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-ne v1, v2, :cond_3

    .line 427
    const/4 v1, 0x2

    aput-byte v1, v0, v3

    goto :goto_1

    .line 428
    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->SPLANNER:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-ne v1, v2, :cond_4

    .line 429
    const/4 v1, 0x3

    aput-byte v1, v0, v3

    goto :goto_1

    .line 431
    :cond_4
    aput-byte v4, v0, v3

    goto :goto_1
.end method

.method protected sendBatteryChargingInformation()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->nullContent:[B

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    .line 456
    return-void
.end method

.method protected sendBatteryChargingInformation(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 357
    const/4 v2, 0x1

    new-array v1, v2, [B

    aput-byte v3, v1, v3

    .line 360
    .local v1, "batteryPercent":[B
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->getLastBatteryInformation()I

    move-result v0

    .line 362
    .local v0, "battLevel":I
    int-to-byte v2, v0

    aput-byte v2, v1, v3

    .line 363
    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/16 v2, 0xa

    invoke-direct {p0, v2, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    .line 366
    return-void
.end method

.method protected sendCallEndInformation(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 344
    const/4 v1, 0x5

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 348
    .local v0, "content":[B
    const/4 v1, 0x2

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    .line 349
    const/16 v1, 0xc

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    .line 350
    return-void

    .line 344
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected sendCallInformation(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->resetAlarmType()V

    .line 339
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->nullContent:[B

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    .line 340
    return-void
.end method

.method protected sendChargingEndInformation(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 369
    const/4 v7, 0x6

    new-array v2, v7, [B

    fill-array-data v2, :array_0

    .line 372
    .local v2, "content":[B
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->getLastBatteryInformation()I

    move-result v1

    .line 373
    .local v1, "battLevel":I
    const-string v7, "kk:mm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "curTimeStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 376
    .local v6, "timeData":[B
    int-to-byte v7, v1

    aput-byte v7, v2, v10

    .line 378
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_0
    array-length v9, v6

    invoke-static {v6, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 386
    :goto_0
    const/16 v7, 0xb

    invoke-direct {p0, v7, v2}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    .line 387
    return-void

    .line 379
    :catch_0
    move-exception v4

    .line 380
    .local v4, "ioobe":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v4}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 381
    .end local v4    # "ioobe":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 382
    .local v0, "ase":Ljava/lang/ArrayStoreException;
    invoke-virtual {v0}, Ljava/lang/ArrayStoreException;->printStackTrace()V

    goto :goto_0

    .line 383
    .end local v0    # "ase":Ljava/lang/ArrayStoreException;
    :catch_2
    move-exception v5

    .line 384
    .local v5, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 369
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected sendClockInformation()V
    .locals 13

    .prologue
    const/4 v9, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->isCoverOpen()Z

    move-result v8

    if-nez v8, :cond_2

    .line 280
    iget-object v8, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 281
    .local v0, "bIs24HTime":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 282
    .local v2, "curTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 284
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 286
    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 287
    .local v5, "hours":I
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 289
    .local v6, "minutes":I
    if-eqz v0, :cond_0

    .line 290
    const-string v8, "%02d:%02d"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "curTimeStr":Ljava/lang/String;
    :goto_0
    sget-object v8, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendClockInformation : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 301
    .local v7, "timeData":[B
    invoke-direct {p0, v11, v7}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    .line 305
    .end local v0    # "bIs24HTime":Z
    .end local v1    # "c":Ljava/util/Calendar;
    .end local v2    # "curTime":J
    .end local v4    # "curTimeStr":Ljava/lang/String;
    .end local v5    # "hours":I
    .end local v6    # "minutes":I
    .end local v7    # "timeData":[B
    :goto_1
    return-void

    .line 292
    .restart local v0    # "bIs24HTime":Z
    .restart local v1    # "c":Ljava/util/Calendar;
    .restart local v2    # "curTime":J
    .restart local v5    # "hours":I
    .restart local v6    # "minutes":I
    :cond_0
    rem-int/lit8 v5, v5, 0xc

    .line 293
    if-nez v5, :cond_1

    .line 294
    const/16 v5, 0xc

    .line 296
    :cond_1
    const-string v8, "%2d:%02d"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "curTimeStr":Ljava/lang/String;
    goto :goto_0

    .line 303
    .end local v0    # "bIs24HTime":Z
    .end local v1    # "c":Ljava/util/Calendar;
    .end local v2    # "curTime":J
    .end local v4    # "curTimeStr":Ljava/lang/String;
    .end local v5    # "hours":I
    .end local v6    # "minutes":I
    :cond_2
    sget-object v8, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    const-string v9, "sendClockInformation : Cover is opend"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendCurrentBrightnessGrade()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 437
    const/4 v1, 0x0

    .line 438
    .local v1, "currentBrighness":F
    iget-object v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 439
    new-array v0, v3, [B

    .line 440
    .local v0, "brightnessGrade":[B
    iget-object v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getCurrentBrightness()F

    move-result v1

    .line 441
    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 442
    aput-byte v3, v0, v5

    .line 447
    :goto_0
    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LED currentBrighness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | brightnessGrade = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/16 v2, 0x11

    invoke-direct {p0, v2, v0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    .line 451
    .end local v0    # "brightnessGrade":[B
    :cond_0
    return-void

    .line 443
    .restart local v0    # "brightnessGrade":[B
    :cond_1
    const/high16 v2, 0x434d0000    # 205.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    .line 444
    const/4 v2, 0x2

    aput-byte v2, v0, v5

    goto :goto_0

    .line 446
    :cond_2
    const/4 v2, 0x3

    aput-byte v2, v0, v5

    goto :goto_0
.end method

.method protected sendLowBatteryInformation(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 353
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->nullContent:[B

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    .line 354
    return-void
.end method

.method protected sendMissedEventInformation()Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 243
    const/4 v2, 0x0

    .line 244
    .local v2, "sendCmd":Z
    const/4 v4, 0x6

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    .line 248
    .local v1, "content":[B
    iget-boolean v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->isIncomingCallStatus:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v5, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    if-eq v4, v5, :cond_1

    :cond_0
    move v3, v2

    .line 273
    .end local v2    # "sendCmd":Z
    .local v3, "sendCmd":I
    :goto_0
    return v3

    .line 252
    .end local v3    # "sendCmd":I
    .restart local v2    # "sendCmd":Z
    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 253
    aput-byte v6, v1, v7

    .line 254
    iget-object v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/cover/ledcover/LedCoverController;->intTo2ByteArray(I)[B

    move-result-object v0

    .line 256
    .local v0, "cntMissedCall":[B
    aget-byte v4, v0, v7

    aput-byte v4, v1, v8

    .line 257
    const/4 v4, 0x3

    aget-byte v5, v0, v6

    aput-byte v5, v1, v4

    .line 258
    const/4 v2, 0x1

    .line 261
    .end local v0    # "cntMissedCall":[B
    :cond_2
    iget-object v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventMessageCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 262
    aput-byte v6, v1, v6

    .line 263
    iget-object v4, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventMessageCount()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/cover/ledcover/LedCoverController;->intTo2ByteArray(I)[B

    move-result-object v0

    .line 265
    .restart local v0    # "cntMissedCall":[B
    const/4 v4, 0x4

    aget-byte v5, v0, v7

    aput-byte v5, v1, v4

    .line 266
    const/4 v4, 0x5

    aget-byte v5, v0, v6

    aput-byte v5, v1, v4

    .line 267
    const/4 v2, 0x1

    .line 270
    .end local v0    # "cntMissedCall":[B
    :cond_3
    if-eqz v2, :cond_4

    .line 271
    invoke-direct {p0, v8, v1}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    :cond_4
    move v3, v2

    .line 273
    .restart local v3    # "sendCmd":I
    goto :goto_0

    .line 244
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected sendVolumeInformation(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 308
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 309
    .local v2, "volume":I
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/16 v4, -0x3e7

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 311
    .local v1, "type":I
    const/4 v3, 0x1

    new-array v0, v3, [B

    aput-byte v6, v0, v6

    .line 314
    .local v0, "bytesVol":[B
    sget-object v3, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendVolumeInformation : volume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget v3, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->prevCallSatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 319
    if-eqz v1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 324
    :cond_0
    mul-int/lit8 v2, v2, 0x3

    .line 326
    if-gtz v2, :cond_2

    .line 327
    const/4 v2, 0x1

    .line 333
    :cond_1
    :goto_1
    int-to-byte v3, v2

    aput-byte v3, v0, v6

    .line 334
    const/4 v3, 0x3

    invoke-direct {p0, v3, v0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V

    goto :goto_0

    .line 328
    :cond_2
    const/16 v3, 0xf

    if-le v2, v3, :cond_1

    .line 329
    const/16 v2, 0xf

    goto :goto_1
.end method

.method protected setAlarmType(Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;)V
    .locals 2
    .param p1, "type"    # Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmType:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmStartTime:J

    .line 412
    return-void
.end method

.method public startAlarmTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 758
    sget-object v0, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "startAlarmTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->acquireWakeLock()V

    .line 761
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    .line 762
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 764
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mAlarmTimerHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 769
    return-void
.end method

.method public updateMissedEvent(Z)V
    .locals 12
    .param p1, "sendDataToCover"    # Z

    .prologue
    const/4 v3, 0x1

    .line 511
    sget-object v2, Lcom/sec/android/cover/ledcover/LedCoverController;->TAG:Ljava/lang/String;

    const-string v4, "updateMissedEvent()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v10

    .line 516
    .local v10, "coverRemoteViewManager":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    const-string v2, "new_message"

    invoke-virtual {v10, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v11

    .line 518
    .local v11, "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    const-string v2, "missed_call"

    invoke-virtual {v10, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v0

    .line 521
    .local v0, "callRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    iget-object v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->clearMissedEvent()V

    .line 524
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    if-lez v2, :cond_0

    .line 525
    new-instance v1, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    iget-object v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v7, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v8, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v9, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 530
    .local v1, "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    iget-object v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    .line 534
    .end local v1    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    :cond_0
    if-eqz v11, :cond_1

    iget v2, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    if-lez v2, :cond_1

    .line 535
    new-instance v1, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    iget-object v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v7, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v8, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v9, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 540
    .restart local v1    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    iget-object v2, p0, Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    .line 543
    .end local v1    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    :cond_1
    if-eqz p1, :cond_2

    .line 544
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/LedCoverController;->sendMissedEventInformation()Z

    .line 546
    :cond_2
    return-void
.end method
