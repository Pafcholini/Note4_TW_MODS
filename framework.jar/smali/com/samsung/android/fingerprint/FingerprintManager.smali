.class public Lcom/samsung/android/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;,
        Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;,
        Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    }
.end annotation


# static fields
.field public static final BUNDLE_ENABLE_PASSWORD:Ljava/lang/String; = "password"

.field public static final BUNDLE_PRIMARY_AUTHORIZATION:Ljava/lang/String; = "primary_authorization"

.field public static final CLIENTSPEC_KEY_ACCURACY:Ljava/lang/String; = "request_accuracy"

.field public static final CLIENTSPEC_KEY_ALLOW_INDEXES:Ljava/lang/String; = "request_template_index_list"

.field public static final CLIENTSPEC_KEY_APPNAME:Ljava/lang/String; = "appName"

.field public static final CLIENTSPEC_KEY_BACKGROUND:Ljava/lang/String; = "background"

.field public static final CLIENTSPEC_KEY_DEMANDED_PROPERTY_NAME:Ljava/lang/String; = "propertyName"

.field public static final CLIENTSPEC_KEY_DEMAND_EXTRA_EVENT:Ljava/lang/String; = "demandExtraEvent"

.field public static final CLIENTSPEC_KEY_OWN_NAME:Ljava/lang/String; = "ownName"

.field public static final CLIENTSPEC_KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final CLIENTSPEC_KEY_SECURITY_LEVEL:Ljava/lang/String; = "securityLevel"

.field public static final CLIENTSPEC_KEY_USE_MANUAL_TIMEOUT:Ljava/lang/String; = "useManualTimeout"

.field private static final DEBUG:Z

.field private static final ENROLL_FINISHED:Ljava/lang/String; = "com.samsung.android.fingerprint.action.ENROLL_FINISHED"

.field private static final ERROR_MSG_SERVICE_NOT_FOUND:Ljava/lang/String; = "FingerprintService is not running!"

.field public static final EXTRAS_KEY_TOKEN:Ljava/lang/String; = "token"

.field public static final FINGER_ALL:I = 0x15

.field public static final FINGER_LEFT_INDEX:I = 0x2

.field public static final FINGER_LEFT_INDEX_2ND:I = 0xc

.field public static final FINGER_LEFT_LITTLE:I = 0x5

.field public static final FINGER_LEFT_LITTLE_2ND:I = 0xf

.field public static final FINGER_LEFT_MIDDLE:I = 0x3

.field public static final FINGER_LEFT_MIDDLE_2ND:I = 0xd

.field public static final FINGER_LEFT_RING:I = 0x4

.field public static final FINGER_LEFT_RING_2ND:I = 0xe

.field public static final FINGER_LEFT_THUMB:I = 0x1

.field public static final FINGER_LEFT_THUMB_2ND:I = 0xb

.field public static final FINGER_NOT_SPECIFIED:I = 0x0

.field public static final FINGER_NUMBER_FOR_ONE:I = 0xa

.field public static final FINGER_PERMISSION_DELIMITER:Ljava/lang/String; = ","

.field public static final FINGER_RIGHT_INDEX:I = 0x7

.field public static final FINGER_RIGHT_INDEX_2ND:I = 0x11

.field public static final FINGER_RIGHT_LITTLE:I = 0xa

.field public static final FINGER_RIGHT_LITTLE_2ND:I = 0x14

.field public static final FINGER_RIGHT_MIDDLE:I = 0x8

.field public static final FINGER_RIGHT_MIDDLE_2ND:I = 0x12

.field public static final FINGER_RIGHT_RING:I = 0x9

.field public static final FINGER_RIGHT_RING_2ND:I = 0x13

.field public static final FINGER_RIGHT_THUMB:I = 0x6

.field public static final FINGER_RIGHT_THUMB_2ND:I = 0x10

.field public static final SECURITY_LEVEL_HIGH:I = 0x2

.field public static final SECURITY_LEVEL_LOW:I = 0x0

.field public static final SECURITY_LEVEL_REGULAR:I = 0x1

.field public static final SECURITY_LEVEL_VERY_HIGH:I = 0x3

.field public static final SENSOR_TYPE_SWIPE:I = 0x1

.field public static final SENSOR_TYPE_TOUCH:I = 0x2

.field public static final SERVICE_NAME:Ljava/lang/String; = "fingerprint_service"

.field private static final START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "FingerprintManager"

.field public static final USE_LAST_QUALITY_FEEDBACK:I = -0x1

.field private static mCallerActivity:Landroid/app/Activity;

.field private static mCallerApplication:Landroid/app/Application;

.field private static mContext:Landroid/content/Context;

.field private static mEnrollFinishResult:I

.field private static mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

.field private static mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private static mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

.field private static mIndex:I

.field private static mIsLinkedDeathRecipient:Z

.field private static mSecurityLevel:I

.field private static mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

.field private static mStringId:Ljava/lang/String;

.field private static mWaitLock:Ljava/lang/Object;

.field private static sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;


# instance fields
.field private mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private final mHandler:Landroid/os/Handler;

.field private mIsServiceBind:Z

.field private mOwnName:Ljava/lang/String;

.field private mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 56
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.activity.StartEnrollActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    .line 168
    sput-boolean v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mWaitLock:Ljava/lang/Object;

    .line 173
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 174
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;

    .line 176
    sput v6, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    .line 177
    sput v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    .line 180
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .line 183
    sput v6, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollFinishResult:I

    .line 192
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-void

    :cond_0
    move v0, v2

    .line 56
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mServiceConn:Landroid/content/ServiceConnection;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsServiceBind:Z

    .line 175
    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    .line 847
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$3;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1410
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$4;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    .line 227
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 228
    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/fingerprint/IFingerprintClient;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/fingerprint/FingerprintManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsServiceBind:Z

    return p1
.end method

.method static synthetic access$200()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/fingerprint/FingerprintManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/fingerprint/FingerprintManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/fingerprint/FingerprintManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/fingerprint/FingerprintManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;

    return-object v0
.end method

.method private addPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "fingerIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1111
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1113
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1114
    const-string v2, "addPermission"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1124
    :goto_0
    return v1

    .line 1119
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->addPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1120
    :catch_0
    move-exception v0

    .line 1121
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "addPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private attachClient(Landroid/os/IBinder;Lcom/samsung/android/fingerprint/IFingerprintClient;)Landroid/os/IBinder;
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;

    .prologue
    const/4 v1, 0x0

    .line 515
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 517
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 518
    const-string v2, "attachClient"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 528
    :goto_0
    return-object v1

    .line 523
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->attachClient(Landroid/os/IBinder;Lcom/samsung/android/fingerprint/IFingerprintClient;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "attachClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private bindFingerprintManagerService()V
    .locals 5

    .prologue
    .line 345
    const-string v2, "FingerprintManager"

    const-string v3, "bindFingerprintManagerService: called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mServiceConn:Landroid/content/ServiceConnection;

    if-nez v2, :cond_0

    .line 347
    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$2;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    iput-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mServiceConn:Landroid/content/ServiceConnection;

    .line 362
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 363
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 365
    const-string v2, "com.samsung.android.fingerprint.action.START_BIND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const/4 v0, 0x1

    .line 367
    .local v0, "bindFlag":I
    sget-boolean v2, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 368
    or-int/lit8 v0, v0, 0x2

    .line 370
    :cond_1
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    const-string v2, "FingerprintManager"

    const-string v3, "bindFingerprintManagerService: OK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_2
    return-void
.end method

.method private detachClient(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 533
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 535
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 536
    const-string v2, "detachClient"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 546
    :goto_0
    return v1

    .line 541
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->detachClient(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "detachClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static declared-synchronized ensureServiceConnected()V
    .locals 7

    .prologue
    .line 297
    const-class v4, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v4

    const/4 v2, 0x0

    .line 299
    .local v2, "isStartedServiceInTime":Z
    :try_start_0
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_0

    .line 300
    const-string v3, "fingerprint_service"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintManager;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    .line 303
    :cond_0
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_2

    .line 304
    const-string v3, "FingerprintManager"

    const-string v5, "ensureServiceConnected: mService is null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->startFingerprintManagerService()V

    .line 306
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->waitForService()Z

    move-result v2

    .line 307
    if-eqz v2, :cond_1

    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 309
    :try_start_1
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 310
    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    :cond_1
    :goto_0
    monitor-exit v4

    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "FingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ensureServiceConnected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 297
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 317
    :cond_2
    :try_start_3
    const-string v3, "FingerprintManager"

    const-string v5, "ensureServiceConnected: mService is not null, Check status....."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    :try_start_4
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getVersion()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 320
    :catch_1
    move-exception v0

    .line 321
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    instance-of v3, v0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_3

    .line 322
    const-string v3, "FingerprintManager"

    const-string v5, "===DeadObjectException==="

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->startFingerprintManagerService()V

    .line 324
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->waitForService()Z

    move-result v2

    .line 325
    if-eqz v2, :cond_1

    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v3, :cond_1

    .line 327
    :try_start_6
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 328
    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z

    .line 329
    const-string v3, "FingerprintManager"

    const-string v5, "ensureServiceConnected: linkToDeath"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 330
    :catch_2
    move-exception v1

    .line 331
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_7
    const-string v3, "FingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ensureServiceConnected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3
    const-string v3, "FingerprintManager"

    const-string v5, "ensureServiceConnected"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 337
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FingerprintManager"

    const-string v5, "ensureServiceConnected"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method private finishIdentify(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 571
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 573
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 574
    const-string v2, "finishIdentify"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 584
    :goto_0
    return v1

    .line 579
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->finishIdentify(Landroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "finishIdentify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getEnrolledPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 975
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 977
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 978
    const-string v2, "getEnrolledPermissions"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 988
    :goto_0
    return-object v1

    .line 983
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getEnrolledPermissions"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private getEnrolledUserCount()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1009
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1011
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1012
    const-string v2, "getEnrolledUserCount"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1022
    :goto_0
    return v1

    .line 1017
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledUserCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getEnrolledUserCount"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private getEnrolledUsers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 992
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 994
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 995
    const-string v2, "getEnrolledUsers"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1005
    :goto_0
    return-object v1

    .line 1000
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledUsers()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getEnrolledUsers"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getImageQualityAnimation(ILandroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 8
    .param p0, "quality"    # I
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1831
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1832
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1833
    .local v3, "mRes":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 1834
    .local v4, "result":I
    const/4 v1, 0x0

    .line 1837
    .local v1, "mAni":Landroid/graphics/drawable/AnimationDrawable;
    :try_start_0
    const-string v5, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1842
    :goto_0
    if-nez v3, :cond_0

    .line 1843
    const-string v5, "FingerprintManager"

    const-string/jumbo v6, "mRes is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const/4 v5, 0x0

    .line 1922
    :goto_1
    return-object v5

    .line 1838
    :catch_0
    move-exception v0

    .line 1839
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "FingerprintManager"

    const-string v6, "getImageQualityAnimation, NameNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1847
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v5, -0x1

    if-ne p0, v5, :cond_1

    .line 1849
    :try_start_1
    sget-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQuality(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result p0

    .line 1854
    :cond_1
    :goto_2
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 1855
    sparse-switch p0, :sswitch_data_0

    .line 1888
    const-string/jumbo v5, "spass_errimage_default"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1919
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 1920
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "mAni":Landroid/graphics/drawable/AnimationDrawable;
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .restart local v1    # "mAni":Landroid/graphics/drawable/AnimationDrawable;
    :cond_3
    move-object v5, v1

    .line 1922
    goto :goto_1

    .line 1850
    :catch_1
    move-exception v0

    .line 1851
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1857
    .end local v0    # "e":Landroid/os/RemoteException;
    :sswitch_0
    const-string/jumbo v5, "spass_errimage_nomatch"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1858
    goto :goto_3

    .line 1860
    :sswitch_1
    const-string/jumbo v5, "spass_errimage_short"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1861
    goto :goto_3

    .line 1864
    :sswitch_2
    const-string/jumbo v5, "spass_errimage_speed"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1865
    goto :goto_3

    .line 1867
    :sswitch_3
    const-string/jumbo v5, "spass_errimage_reverse"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1868
    goto :goto_3

    .line 1870
    :sswitch_4
    const-string/jumbo v5, "spass_errimage_left"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1871
    goto :goto_3

    .line 1873
    :sswitch_5
    const-string/jumbo v5, "spass_errimage_right"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1874
    goto :goto_3

    .line 1876
    :sswitch_6
    const-string/jumbo v5, "spass_errimage_wet"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1877
    goto :goto_3

    .line 1879
    :sswitch_7
    const-string/jumbo v5, "spass_errimage_diagonal"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1880
    goto :goto_3

    .line 1882
    :sswitch_8
    const-string/jumbo v5, "spass_errimage_homekey"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1883
    goto :goto_3

    .line 1885
    :sswitch_9
    const-string/jumbo v5, "spass_errimage_same"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1886
    goto/16 :goto_3

    .line 1891
    :cond_4
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 1892
    sparse-switch p0, :sswitch_data_1

    .line 1915
    const-string/jumbo v5, "spass_errimage_default"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    .line 1894
    :sswitch_a
    const-string/jumbo v5, "spass_touch_errimage_nomatch"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1895
    goto/16 :goto_3

    .line 1899
    :sswitch_b
    const-string/jumbo v5, "spass_touch_errimage_short"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1900
    goto/16 :goto_3

    .line 1903
    :sswitch_c
    const-string/jumbo v5, "spass_touch_errimage_whole"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1904
    goto/16 :goto_3

    .line 1907
    :sswitch_d
    const-string/jumbo v5, "spass_touch_errimage_wet"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1908
    goto/16 :goto_3

    .line 1911
    :sswitch_e
    const-string/jumbo v5, "spass_touch_errimage_position"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1912
    goto/16 :goto_3

    .line 1855
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x200 -> :sswitch_8
        0x8000 -> :sswitch_7
        0x20000 -> :sswitch_4
        0x40000 -> :sswitch_5
        0x1000000 -> :sswitch_6
        0x30000000 -> :sswitch_9
    .end sparse-switch

    .line 1892
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_a
        0x10000 -> :sswitch_b
        0x80000 -> :sswitch_b
        0x1000000 -> :sswitch_d
        0x30000000 -> :sswitch_e
        0x60000000 -> :sswitch_c
    .end sparse-switch
.end method

.method public static getImageQualityFeedback(I)I
    .locals 1
    .param p0, "quality"    # I

    .prologue
    .line 1745
    const/4 v0, 0x0

    .line 1746
    .local v0, "result":I
    sparse-switch p0, :sswitch_data_0

    .line 1792
    :goto_0
    return v0

    .line 1748
    :sswitch_0
    const v0, 0x10407f3

    .line 1749
    goto :goto_0

    .line 1753
    :sswitch_1
    const v0, 0x10407f6

    .line 1754
    goto :goto_0

    .line 1756
    :sswitch_2
    const v0, 0x10407f7

    .line 1757
    goto :goto_0

    .line 1759
    :sswitch_3
    const v0, 0x10407f8

    .line 1760
    goto :goto_0

    .line 1762
    :sswitch_4
    const v0, 0x10407f9

    .line 1763
    goto :goto_0

    .line 1765
    :sswitch_5
    const v0, 0x10407fa

    .line 1766
    goto :goto_0

    .line 1768
    :sswitch_6
    const v0, 0x10407fb

    .line 1769
    goto :goto_0

    .line 1771
    :sswitch_7
    const v0, 0x10407fc

    .line 1772
    goto :goto_0

    .line 1774
    :sswitch_8
    const v0, 0x10407fd

    .line 1775
    goto :goto_0

    .line 1777
    :sswitch_9
    const v0, 0x10407fe

    .line 1778
    goto :goto_0

    .line 1780
    :sswitch_a
    const v0, 0x10407ff

    .line 1781
    goto :goto_0

    .line 1784
    :sswitch_b
    const v0, 0x1040800

    .line 1785
    goto :goto_0

    .line 1787
    :sswitch_c
    const v0, 0x1040806

    .line 1788
    goto :goto_0

    .line 1746
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_7
        0x2 -> :sswitch_3
        0x3 -> :sswitch_b
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x200 -> :sswitch_c
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_1
        0x8000 -> :sswitch_b
        0x10000 -> :sswitch_9
        0x20000 -> :sswitch_4
        0x40000 -> :sswitch_5
        0x80000 -> :sswitch_8
        0x1000000 -> :sswitch_a
        0x2000000 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getImageQualityIcon(I)I
    .locals 1
    .param p0, "quality"    # I

    .prologue
    .line 1796
    const/4 v0, 0x0

    .line 1797
    .local v0, "result":I
    sparse-switch p0, :sswitch_data_0

    .line 1824
    const v0, 0x1080393

    .line 1827
    :goto_0
    return v0

    .line 1799
    :sswitch_0
    const v0, 0x1080396

    .line 1800
    goto :goto_0

    .line 1802
    :sswitch_1
    const v0, 0x1080397

    .line 1803
    goto :goto_0

    .line 1806
    :sswitch_2
    const v0, 0x108039a

    .line 1807
    goto :goto_0

    .line 1809
    :sswitch_3
    const v0, 0x1080398

    .line 1810
    goto :goto_0

    .line 1812
    :sswitch_4
    const v0, 0x1080399

    .line 1813
    goto :goto_0

    .line 1815
    :sswitch_5
    const v0, 0x108039b

    .line 1816
    goto :goto_0

    .line 1818
    :sswitch_6
    const v0, 0x1080394

    .line 1819
    goto :goto_0

    .line 1821
    :sswitch_7
    const v0, 0x1080395

    .line 1822
    goto :goto_0

    .line 1797
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x200 -> :sswitch_7
        0x8000 -> :sswitch_6
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x1000000 -> :sswitch_5
    .end sparse-switch
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const-class v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {p0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "SecurityLevel"    # I

    .prologue
    .line 203
    const-class v1, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "SecurityLevel"    # I
    .param p2, "ownName"    # Ljava/lang/String;

    .prologue
    .line 211
    const-class v1, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 212
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "context must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 214
    :cond_0
    :try_start_1
    sput-object p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 215
    sput p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    .line 216
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v0, :cond_1

    .line 217
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 219
    :cond_1
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_2

    .line 220
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {v0, p2}, Lcom/samsung/android/fingerprint/FingerprintManager;->setOwnName(Ljava/lang/String;)V

    .line 222
    :cond_2
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 223
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ownName"    # Ljava/lang/String;

    .prologue
    .line 199
    const-class v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSensorType()I
    .locals 2

    .prologue
    .line 1145
    const-string v0, ""

    const-string/jumbo v1, "touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    const/4 v0, 0x2

    .line 1148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isEnrolledPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1026
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1028
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1029
    const-string/jumbo v2, "isEnrolledPermission"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1039
    :goto_0
    return v1

    .line 1034
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isEnrolledPermission(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "isEnrolledPermission"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1247
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1248
    return-void
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 1258
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1259
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1263
    :goto_1
    return-void

    .line 1259
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1261
    :cond_1
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "extraInfo2"    # Ljava/lang/String;

    .prologue
    .line 1266
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1267
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1271
    :goto_1
    return-void

    .line 1267
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1269
    :cond_1
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private notifyAuthSessionBegin()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1612
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1614
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1615
    const-string/jumbo v2, "notifyAuthSessionBegin"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1624
    :goto_0
    return v1

    .line 1620
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyAuthSessionBegin()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1621
    :catch_0
    move-exception v0

    .line 1622
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "notifyAuthSessionBegin"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private notifyAuthSessionEnd()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1628
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1630
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1631
    const-string/jumbo v2, "notifyAuthSessionEnd"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1640
    :goto_0
    return v1

    .line 1636
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyAuthSessionEnd()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1637
    :catch_0
    move-exception v0

    .line 1638
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "notifyAuthSessionEnd"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private reEnroll(Landroid/os/IBinder;I)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 422
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 424
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 425
    const-string/jumbo v2, "reenroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 435
    :goto_0
    return v1

    .line 430
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->reEnroll(Landroid/os/IBinder;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "reenroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerActivityLifeCallback()V
    .locals 2

    .prologue
    .line 912
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 913
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "registerActivityLifeCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 916
    :cond_0
    return-void
.end method

.method private removeEnrolledPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "fingerIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1060
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1062
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1063
    const-string/jumbo v2, "removeEnrolledPermission"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1073
    :goto_0
    return v1

    .line 1068
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeEnrolledPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeEnrolledPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeEnrolledPermissions(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1043
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1045
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1046
    const-string/jumbo v2, "removeEnrolledPermissions"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1056
    :goto_0
    return v1

    .line 1051
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeEnrolledPermissions(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeEnrolledPermissions"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private secondaryEnroll(Landroid/os/IBinder;I)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 439
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 441
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 442
    const-string/jumbo v2, "secondaryEnroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 452
    :goto_0
    return v1

    .line 447
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->secondaryEnroll(Landroid/os/IBinder;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "secondaryEnroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setOwnName(Ljava/lang/String;)V
    .locals 3
    .param p1, "ownName"    # Ljava/lang/String;

    .prologue
    .line 1926
    const-string v0, "FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ownName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    .line 1929
    return-void
.end method

.method private static startFingerprintManagerService()V
    .locals 5

    .prologue
    .line 255
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 258
    const-string v2, "com.samsung.android.fingerprint.action.START_SERVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    sget-boolean v2, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 260
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unBindFingerprintManagerService()V
    .locals 3

    .prologue
    .line 377
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "unBindFingerprintManagerService: called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsServiceBind:Z

    if-eqz v1, :cond_0

    .line 380
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "unBindFingerprintManagerService"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterActivityLifeCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 919
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 920
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "unregisterActivityLifeCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 922
    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    .line 923
    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 925
    :cond_0
    return-void
.end method

.method private static waitForService()Z
    .locals 6

    .prologue
    .line 231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long v0, v2, v4

    .line 232
    .local v0, "endMillis":J
    const-string v2, "FingerprintManager"

    const-string/jumbo v3, "waitForService: called"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mWaitLock:Ljava/lang/Object;

    monitor-enter v3

    .line 235
    :try_start_0
    const-string v2, "fingerprint_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    .line 236
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-eqz v2, :cond_0

    .line 237
    const-string v2, "FingerprintManager"

    const-string/jumbo v4, "waitForService: FPMS started"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v2, 0x1

    monitor-exit v3

    .line 242
    :goto_1
    return v2

    .line 240
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-ltz v2, :cond_1

    .line 241
    const-string v2, "FingerprintManager"

    const-string/jumbo v4, "waitForService: Timeout"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_1

    .line 249
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 245
    :cond_1
    :try_start_1
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 270
    const-string v0, "FingerprintManager"

    const-string v1, "binderDied called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    .line 272
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z

    .line 273
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "FingerprintManager"

    const-string v1, "binderDied: Client is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    :cond_0
    return-void
.end method

.method public cancel(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 388
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 390
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_1

    .line 391
    const-string v2, "cancel"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 401
    :cond_0
    :goto_0
    return v1

    .line 396
    :cond_1
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->cancel(Landroid/os/IBinder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "cancel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public closeTransaction(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 1223
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1225
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1226
    const-string v2, "closeTransaction"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1236
    :goto_0
    return v1

    .line 1231
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->closeTransaction(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "closeTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enroll(Landroid/os/IBinder;Ljava/lang/String;I)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 405
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 407
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 408
    const-string v2, "enroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 418
    :goto_0
    return v1

    .line 413
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "enroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enrollForMultiUser(Landroid/os/IBinder;ILjava/lang/String;I)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 456
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 458
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 459
    const-string v2, "enrollForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 469
    :goto_0
    return v1

    .line 464
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->enrollForMultiUser(Landroid/os/IBinder;ILjava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "enrollForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEnrollFinishResult()I
    .locals 1

    .prologue
    .line 1368
    sget v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollFinishResult:I

    return v0
.end method

.method public getEnrollRepeatCount()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2005
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 2007
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 2008
    const-string v2, "getFingerprintId"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2018
    :goto_0
    return v1

    .line 2013
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrollRepeatCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2014
    :catch_0
    move-exception v0

    .line 2015
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getFingerprintId"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getEnrolledFingers()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 958
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 960
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 961
    const-string v2, "getEnrolledFingers"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 971
    :goto_0
    return v1

    .line 966
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledFingers(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getEnrolledFingers"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getFingerprintId(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 1988
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1990
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1991
    const-string v2, "getFingerprintId"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2001
    :goto_0
    return-object v1

    .line 1996
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getFingerprintIdByFinger(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1997
    :catch_0
    move-exception v0

    .line 1998
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getFingerprintId"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getFingerprintIds()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1971
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1973
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1974
    const-string v2, "getFingerprintIds"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1984
    :goto_0
    return-object v1

    .line 1979
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getFingerprintIds(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1980
    :catch_0
    move-exception v0

    .line 1981
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getFingerprintIds"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getIndexName(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 1710
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1711
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1712
    const-string v2, "getIndexName"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1720
    :goto_0
    return-object v1

    .line 1716
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getIndexName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1717
    :catch_0
    move-exception v0

    .line 1718
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getIndexName"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getLastImageQuality(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 745
    const/4 v1, 0x0

    .line 746
    .local v1, "imageId":I
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 747
    const-string v2, "getLastImageQuality"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 748
    const/4 v2, 0x0

    .line 760
    :goto_0
    return v2

    .line 750
    :cond_0
    if-nez p1, :cond_1

    .line 751
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 754
    :cond_1
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQuality(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityIcon(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 759
    :goto_1
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastImageQuality: return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 760
    goto :goto_0

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getQualityMessage"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public getLastImageQualityMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 728
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_1

    .line 729
    const-string v2, "getLastImageQualityMessage"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 740
    :cond_0
    :goto_0
    return-object v1

    .line 732
    :cond_1
    if-eqz p1, :cond_0

    .line 736
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQualityMessage(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getLastImageQualityMessage"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getSensorServiceVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1187
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1189
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 1190
    const-string v1, "getSensorServiceVersion"

    const/4 v2, 0x0

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1191
    const-string v1, ""

    .line 1200
    :goto_0
    return-object v1

    .line 1195
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getSensorServiceVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1196
    :catch_0
    move-exception v0

    .line 1197
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "getSensorServiceVersion"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1200
    const-string v1, ""

    goto :goto_0
.end method

.method public getVersion()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1153
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1155
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1156
    const-string v2, "getVersion"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1166
    :goto_0
    return v1

    .line 1161
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getVersion()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getVersion"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public hasPendingCommand()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1128
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1130
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1131
    const-string v2, "hasPendingCommand"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1141
    :goto_0
    return v1

    .line 1136
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->hasPendingCommand()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "hasPendingCommand"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public identify(Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 622
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 624
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 625
    const-string v2, "identify"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 635
    :goto_0
    return v1

    .line 630
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identify(Landroid/os/IBinder;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "identify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 656
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 658
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 659
    const-string v2, "identifyForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 669
    :goto_0
    return v1

    .line 664
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "identifyForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public identifyForMultiUser(Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 639
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 641
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 642
    const-string v2, "identifyForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 652
    :goto_0
    return v1

    .line 647
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    const/4 v3, -0x1

    invoke-interface {v2, p1, v3, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "identifyForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p3, "attribute"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 588
    const/4 v2, -0x1

    .line 589
    .local v2, "retVal":I
    if-nez p1, :cond_0

    .line 590
    const-string v4, "identifyWithDialog"

    const-string v5, "Context is null"

    invoke-direct {p0, v4, v6, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 618
    :goto_0
    return v3

    .line 593
    :cond_0
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 594
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v4, :cond_1

    .line 595
    const-string v4, "identifyWithDialog"

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v4, v6, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_1
    const/4 v0, 0x0

    .line 599
    .local v0, "comName":Landroid/content/ComponentName;
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 600
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    move-object v3, p1

    .line 601
    check-cast v3, Landroid/app/Activity;

    sput-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    move-object v3, p1

    .line 602
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 603
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerActivityLifeCallback()V

    move-object v3, p1

    .line 604
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 610
    :goto_1
    :try_start_0
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyWithDialog(Ljava/lang/String;Landroid/content/ComponentName;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v2

    .line 611
    if-eqz v2, :cond_2

    .line 612
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    move v3, v2

    .line 618
    goto :goto_0

    .line 606
    :cond_3
    sput-object v6, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 607
    sput-object v6, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    goto :goto_1

    .line 614
    :catch_0
    move-exception v1

    .line 615
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    .line 616
    const-string v3, "identifyWithDialog"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public isEnrolling()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1695
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1696
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1697
    const-string/jumbo v2, "isEnrolling"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1704
    :goto_0
    return v1

    .line 1701
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isEnrollSession()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1702
    :catch_0
    move-exception v0

    .line 1703
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FingerprintManager"

    const-string/jumbo v3, "isEnrolling: failed "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isSensorReady()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1563
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1565
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1566
    const-string/jumbo v2, "isSensorReady"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1576
    :goto_0
    return v1

    .line 1571
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isSensorReady()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1572
    :catch_0
    move-exception v0

    .line 1573
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "isSensorReady"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public isSupportFingerprintIds()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1171
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1173
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1174
    const-string/jumbo v2, "isSupportFingerprintIds"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1183
    :goto_0
    return v1

    .line 1179
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isSupportFingerprintIds()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1180
    :catch_0
    move-exception v0

    .line 1181
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "isSupportFingerprintIds"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public isVZWPermissionGranted()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1958
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-eqz v2, :cond_0

    .line 1960
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isVZWPermissionGranted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1966
    :cond_0
    :goto_0
    return v1

    .line 1961
    :catch_0
    move-exception v0

    .line 1962
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyAlternativePasswordBegin()V
    .locals 4

    .prologue
    .line 1644
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1646
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 1647
    const-string/jumbo v1, "notifyAlternativePasswordBegin"

    const/4 v2, 0x0

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1651
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyAlternativePasswordBegin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1655
    :goto_0
    return-void

    .line 1652
    :catch_0
    move-exception v0

    .line 1653
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "notifyAlternativePasswordBegin"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyAppActivityState(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "extInfo"    # Landroid/os/Bundle;

    .prologue
    .line 898
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 899
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 900
    const-string/jumbo v1, "notifyAppActivityState"

    const/4 v2, 0x0

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 909
    :goto_0
    return-void

    .line 904
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyApplicationState(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "notifyAppActivityState"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyEnrollBegin()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1580
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1582
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1583
    const-string/jumbo v2, "notifyEnrollBegin"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1592
    :goto_0
    return v1

    .line 1588
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyEnrollBegin()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1589
    :catch_0
    move-exception v0

    .line 1590
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "notifyEnrollBegin"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyEnrollEnd()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1596
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1598
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1599
    const-string/jumbo v2, "notifyEnrollEnd"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1608
    :goto_0
    return v1

    .line 1604
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyEnrollEnd()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1605
    :catch_0
    move-exception v0

    .line 1606
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "notifyEnrollEnd"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public openTransaction(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 1205
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1207
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1208
    const-string/jumbo v2, "openTransaction"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1218
    :goto_0
    return v1

    .line 1213
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->openTransaction(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1214
    :catch_0
    move-exception v0

    .line 1215
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "openTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processFIDO(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "requestData"    # [B

    .prologue
    const/4 v5, 0x0

    .line 764
    const-string v3, "FingerprintManager"

    const-string/jumbo v4, "processFIDO"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v1, 0x0

    .line 768
    .local v1, "responseData":[B
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_0

    .line 769
    const-string/jumbo v3, "processFIDO"

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v3, v5, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v1

    .line 788
    .end local v1    # "responseData":[B
    .local v2, "responseData":[B
    :goto_0
    return-object v2

    .line 774
    .end local v2    # "responseData":[B
    .restart local v1    # "responseData":[B
    :cond_0
    if-eqz p4, :cond_1

    :try_start_0
    array-length v3, p4

    if-eqz v3, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move-object v2, v1

    .line 775
    .end local v1    # "responseData":[B
    .restart local v2    # "responseData":[B
    goto :goto_0

    .line 778
    .end local v2    # "responseData":[B
    .restart local v1    # "responseData":[B
    :cond_2
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    const/4 v4, 0x0

    invoke-interface {v3, p2, v4, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->processFIDO(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_3
    :goto_1
    move-object v2, v1

    .line 788
    .end local v1    # "responseData":[B
    .restart local v2    # "responseData":[B
    goto :goto_0

    .line 779
    .end local v2    # "responseData":[B
    .restart local v1    # "responseData":[B
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "processFIDO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permissionName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 782
    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 783
    const-string/jumbo v4, "processFIDO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", requestData="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p4, :cond_4

    const-string v3, "NULL"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, p4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2
.end method

.method public protect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "unprotectedData"    # [B

    .prologue
    .line 674
    const/4 v1, 0x0

    .line 676
    .local v1, "protectedData":[B
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_0

    .line 677
    const-string/jumbo v3, "protect"

    const/4 v4, 0x0

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v1

    .line 696
    .end local v1    # "protectedData":[B
    .local v2, "protectedData":[B
    :goto_0
    return-object v2

    .line 682
    .end local v2    # "protectedData":[B
    .restart local v1    # "protectedData":[B
    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    array-length v3, p3

    if-nez v3, :cond_2

    :cond_1
    move-object v2, v1

    .line 683
    .end local v1    # "protectedData":[B
    .restart local v2    # "protectedData":[B
    goto :goto_0

    .line 686
    .end local v2    # "protectedData":[B
    .restart local v1    # "protectedData":[B
    :cond_2
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->protect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_3
    :goto_1
    move-object v2, v1

    .line 696
    .end local v1    # "protectedData":[B
    .restart local v2    # "protectedData":[B
    goto :goto_0

    .line 687
    .end local v2    # "protectedData":[B
    .restart local v1    # "protectedData":[B
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "protect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permissionName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 690
    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 691
    const-string/jumbo v4, "protect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unprotectedData="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_4

    const-string v3, ""

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, p3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2
.end method

.method public registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    .locals 7
    .param p1, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p2, "clientSpec"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 473
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 475
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v4, :cond_1

    .line 476
    const-string/jumbo v4, "registerClient"

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v4, v3, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v3

    .line 506
    :cond_0
    :goto_0
    return-object v2

    .line 479
    :cond_1
    sput-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    .line 480
    const-string/jumbo v4, "securityLevel"

    sget v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 481
    const-string/jumbo v4, "packageName"

    sget-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :try_start_0
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v4, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v2

    .line 485
    .local v2, "retBinder":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 486
    sput-object p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    .line 487
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->bindFingerprintManagerService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    .end local v2    # "retBinder":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "registerClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clientSpec="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 492
    sput-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    .line 493
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 495
    :try_start_1
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v4, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v2

    .line 496
    .restart local v2    # "retBinder":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 497
    sput-object p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    .line 498
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->bindFingerprintManagerService()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 501
    .end local v2    # "retBinder":Landroid/os/IBinder;
    :catch_1
    move-exception v1

    .line 502
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "FingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerClient 2 : failed - client="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clientSpec="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 506
    goto/16 :goto_0
.end method

.method public registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;)Landroid/os/IBinder;
    .locals 1
    .param p1, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p2, "clientSpecBuilder"    # Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 511
    invoke-virtual {p2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public removeAllEnrolledFingers()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1094
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1096
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1097
    const-string/jumbo v2, "removeAllEnrolledFingers"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1107
    :goto_0
    return v1

    .line 1102
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeAllEnrolledFingers(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeAllEnrolledFingers"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeEnrolledFinger(I)Z
    .locals 5
    .param p1, "fingerIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1077
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1079
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1080
    const-string/jumbo v2, "removeEnrolledFinger"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1090
    :goto_0
    return v1

    .line 1085
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeEnrolledFinger(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeEnrolledFinger"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setEnrollFinishResult(I)V
    .locals 0
    .param p1, "set"    # I

    .prologue
    .line 1362
    sput p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollFinishResult:I

    .line 1363
    return-void
.end method

.method public setIndexName(ILjava/lang/String;)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1724
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1726
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_1

    .line 1727
    const-string/jumbo v2, "setIndexName"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1737
    :cond_0
    :goto_0
    return v1

    .line 1731
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 1732
    :cond_2
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->setIndexName(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1734
    :catch_0
    move-exception v0

    .line 1735
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "setIndexName"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)Z
    .locals 5
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1678
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1680
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1681
    const-string/jumbo v2, "setPassword"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1690
    :goto_0
    return v1

    .line 1686
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->setPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1687
    :catch_0
    move-exception v0

    .line 1688
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "setPassword"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;
    .locals 5
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "enablePassword"    # Z

    .prologue
    const/4 v2, 0x0

    .line 929
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 930
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_0

    .line 931
    const-string/jumbo v3, "showIdentifyDialog"

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v3, v2, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 954
    :goto_0
    return-object v2

    .line 934
    :cond_0
    const/4 v0, 0x0

    .line 935
    .local v0, "comName":Landroid/content/ComponentName;
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 936
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    move-object v2, p1

    .line 937
    check-cast v2, Landroid/app/Activity;

    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    move-object v2, p1

    .line 938
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 939
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerActivityLifeCallback()V

    move-object v2, p1

    .line 940
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 945
    :goto_1
    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    sget v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .line 947
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, v0, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->showIdentifyDialog(Landroid/os/IBinder;Landroid/content/ComponentName;Ljava/lang/String;Z)I

    move-result v2

    if-eqz v2, :cond_1

    .line 948
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :cond_1
    :goto_2
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    goto :goto_0

    .line 942
    :cond_2
    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 943
    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    goto :goto_1

    .line 950
    :catch_0
    move-exception v1

    .line 951
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    .line 952
    const-string/jumbo v2, "showIdentifyDialog"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)Z
    .locals 1
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 1473
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1477
    const/4 v0, 0x0

    .line 1478
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 1479
    const-string v2, "FingerprintManager"

    const-string v3, "ActivityContext is null!! startEnrollActivity need activityContext"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :goto_0
    return v1

    .line 1482
    :cond_0
    if-nez p2, :cond_1

    .line 1483
    const-string v2, "FingerprintManager"

    const-string v3, "Listener is null!! startEnrollActivity need EnrollFinishListener"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1486
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 1487
    :cond_2
    const-string v2, "FingerprintManager"

    const-string v3, "Id parameter is needed. Please give a correct id."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1491
    :cond_3
    sput-object p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1492
    sput-object p2, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    .line 1493
    sput-object p3, Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;

    .line 1495
    sput p4, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    .line 1497
    const-string v1, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnrollActivity: previousStage(mStringId)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ownName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    .line 1502
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1503
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1504
    const-string/jumbo v1, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const-string v1, "demandExtraEvent"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1506
    const-string/jumbo v1, "ownName"

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1509
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/fingerprint/FingerprintManager$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$5;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    invoke-virtual {p0, v1, v3, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move v1, v2

    .line 1554
    goto/16 :goto_0

    .line 1557
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/fingerprint/FingerprintManager;->startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V

    move v1, v2

    .line 1558
    goto/16 :goto_0
.end method

.method public startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V
    .locals 5
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    .line 1458
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)V

    .line 1459
    .local v0, "enrollFinishBroadcastReceiver":Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.fingerprint.action.ENROLL_FINISHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1460
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1462
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1463
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1464
    const-string/jumbo v3, "previousStage"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1465
    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1466
    const-string/jumbo v3, "ownName"

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1468
    :cond_0
    const-string v3, "index"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1469
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1470
    return-void
.end method

.method public unprotect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "protectedData"    # [B

    .prologue
    .line 701
    const/4 v1, 0x0

    .line 703
    .local v1, "unprotectedData":[B
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_0

    .line 704
    const-string/jumbo v3, "unprotect"

    const/4 v4, 0x0

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v1

    .line 723
    .end local v1    # "unprotectedData":[B
    .local v2, "unprotectedData":[B
    :goto_0
    return-object v2

    .line 709
    .end local v2    # "unprotectedData":[B
    .restart local v1    # "unprotectedData":[B
    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    array-length v3, p3

    if-nez v3, :cond_2

    :cond_1
    move-object v2, v1

    .line 710
    .end local v1    # "unprotectedData":[B
    .restart local v2    # "unprotectedData":[B
    goto :goto_0

    .line 713
    .end local v2    # "unprotectedData":[B
    .restart local v1    # "unprotectedData":[B
    :cond_2
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->unprotect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_3
    :goto_1
    move-object v2, v1

    .line 723
    .end local v1    # "unprotectedData":[B
    .restart local v2    # "unprotectedData":[B
    goto :goto_0

    .line 714
    .end local v2    # "unprotectedData":[B
    .restart local v1    # "unprotectedData":[B
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "unprotect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permissionName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 717
    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 718
    const-string/jumbo v4, "unprotect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", protectedData="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_4

    const-string v3, "NULL"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, p3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2
.end method

.method public unregisterClient(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 550
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 552
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_1

    .line 553
    const-string/jumbo v2, "unregisterClient"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 566
    :cond_0
    :goto_0
    return v1

    .line 556
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unBindFingerprintManagerService()V

    .line 558
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    const/4 v1, 0x1

    goto :goto_0

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "unregisterClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public verifyPassword(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1658
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1660
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1661
    const-string/jumbo v2, "verifyPassword"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1670
    :goto_0
    return v1

    .line 1666
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, p1, p2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1667
    :catch_0
    move-exception v0

    .line 1668
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "verifyPassword"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1674
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
