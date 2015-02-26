.class public abstract Lcom/android/systemui/statusbar/BaseStatusBar;
.super Lcom/android/systemui/SystemUI;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent$Callbacks;
.implements Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
.implements Lcom/android/systemui/statusbar/NotificationData$Environment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/BaseStatusBar$16;,
        Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;,
        Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;,
        Lcom/android/systemui/statusbar/BaseStatusBar$H;,
        Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;,
        Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;
    }
.end annotation


# static fields
.field private static final ACTION_RCP_POLICY_CHANGED:Ljava/lang/String; = "samsung.knox.intent.action.RCP_POLICY_CHANGED"

.field private static final BANNER_ACTION_CANCEL:Ljava/lang/String; = "com.android.systemui.statusbar.banner_action_cancel"

.field private static final BANNER_ACTION_SETUP:Ljava/lang/String; = "com.android.systemui.statusbar.banner_action_setup"

.field public static final BRIDGE_COMPONENT:Ljava/lang/String; = "com.sec.knox.bridge/com.sec.knox.bridge.activity.SwitchB2BActivity"

.field public static final DEBUG:Z

.field protected static final ENABLE_HEADS_UP:Z = true

.field public static final EXPANDED_FULL_OPEN:I = -0x2711

.field public static final EXPANDED_LEAVE_ALONE:I = -0x2710

.field private static final HIDDEN_NOTIFICATION_ID:I = 0x2710

.field protected static final INTERRUPTION_THRESHOLD:I = 0xa

.field private static final KNOX_DEBUG:Z

.field public static final KNOX_EXPORT_DATA:I = 0x2

.field public static final KNOX_IMPORT_DATA:I = 0x1

.field public static final KNOX_NO_SANITIZING:I = 0x8

.field public static final KNOX_SANITIZING:I = 0x4

.field private static final KNOX_TAG:Ljava/lang/String; = "KnoxNotification"

.field public static final MAGIC_NUMBER_HIDE_NOTIFICATION:I = -0x7f7f7f80

.field public static final MAGIC_NUMBER_HIDE_NOTIFICATION_ICON:I = 0x10101010

.field protected static final MSG_CANCEL_PRELOAD_RECENT_APPS:I = 0x3ff

.field protected static final MSG_CLOSE_SEARCH_PANEL:I = 0x403

.field protected static final MSG_DECAY_HEADS_UP:I = 0x407

.field protected static final MSG_ENABLE_SIGNAL:I = 0x408

.field protected static final MSG_ESCALATE_HEADS_UP:I = 0x406

.field protected static final MSG_HIDE_HEADS_UP:I = 0x405

.field protected static final MSG_HIDE_RECENT_APPS:I = 0x3fc

.field protected static final MSG_PRELOAD_RECENT_APPS:I = 0x3fe

.field protected static final MSG_SHOW_HEADS_UP:I = 0x404

.field protected static final MSG_SHOW_NEXT_AFFILIATED_TASK:I = 0x400

.field protected static final MSG_SHOW_PREV_AFFILIATED_TASK:I = 0x401

.field protected static final MSG_SHOW_RECENT_APPS:I = 0x3fb

.field protected static final MSG_TOGGLE_RECENTS_APPS:I = 0x3fd

.field public static final MULTIUSER_DEBUG:Z = false

.field public static final MYKNOX_PKG:Ljava/lang/String; = "com.samsung.knoxpb.mdm"

.field protected static final SETTING_HEADS_UP_TICKER:Ljava/lang/String; = "ticker_gets_heads_up"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field public static final TAG:Ljava/lang/String; = "StatusBar"

.field public static isNetworkAvailable:Z

.field private static final mExportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mImportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mIsNavigationBarHidden:Z

.field public static mIsStatusBarHidden:Z

.field protected static final mKnoxInLockMode:Landroid/util/SparseBooleanArray;

.field protected static final mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

.field private static final mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field containerObserver:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mBouncerShowing:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentUserId:I

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field protected mDisableNotificationAlerts:Z

.field protected mDismissView:Lcom/android/systemui/statusbar/DismissView;

.field protected mDisplay:Landroid/view/Display;

.field protected mDreamManager:Landroid/service/dreams/IDreamManager;

.field protected mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

.field private mFastOutLinearIn:Landroid/animation/TimeInterpolator;

.field private mFontScale:F

.field protected mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

.field protected mHeadsUpNotificationDecay:I

.field protected mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

.field protected mHeadsUpTicker:Z

.field public mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

.field protected mLayoutDirection:I

.field private mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

.field private mLocale:Ljava/util/Locale;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenKnoxMode:Z

.field private mLockscreenPublicMode:Z

.field private final mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field protected mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field public mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field protected mPanelSlightlyVisible:Z

.field private mPm:Landroid/os/PersonaManager;

.field mPowerManager:Landroid/os/PowerManager;

.field protected mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

.field private final mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

.field protected mRecents:Lcom/android/systemui/RecentsComponent;

.field protected mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mRowMaxHeight:I

.field protected mRowMinHeight:I

.field protected mScrollView:Landroid/widget/ScrollView;

.field protected mSearchPanelView:Lcom/android/systemui/SearchPanelView;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field protected mShowLockscreenNotifications:Z

.field public mShowSFinderQConnectView:Z

.field public mSingleLine:Z

.field protected mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field protected mState:I

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field protected mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

.field protected mUseHeadsUp:Z

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;

.field protected mZenMode:I

.field protected panelRevealedByUser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    const-string v0, "StatusBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    .line 266
    sput-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    .line 267
    sput-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNavigationBarHidden:Z

    .line 311
    const-string v0, "eng"

    const-string v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    .line 323
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 324
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 325
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 327
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    .line 328
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    .line 223
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 224
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 226
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 230
    iput-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 234
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    .line 235
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    .line 236
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisableNotificationAlerts:Z

    .line 246
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 247
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 272
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    .line 277
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->panelRevealedByUser:Z

    .line 316
    iput-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 330
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    .line 332
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenKnoxMode:Z

    .line 337
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSingleLine:Z

    .line 785
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 802
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 813
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$3;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 882
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$4;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 952
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$5;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 1001
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$6;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 1902
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$13;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 2735
    return-void
.end method

.method private FlipFontSwitched()V
    .locals 4

    .prologue
    .line 1340
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1343
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1344
    .local v2, "config":Landroid/content/res/Configuration;
    iget v1, v2, Landroid/content/res/Configuration;->FlipFont:I

    .line 1345
    .local v1, "before":I
    iget v3, v2, Landroid/content/res/Configuration;->FlipFont:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 1346
    iget v3, v2, Landroid/content/res/Configuration;->FlipFont:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/content/res/Configuration;->FlipFont:I

    .line 1350
    :goto_0
    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1354
    .end local v1    # "before":I
    .end local v2    # "config":Landroid/content/res/Configuration;
    :goto_1
    return-void

    .line 1348
    .restart local v1    # "before":I
    .restart local v2    # "config":Landroid/content/res/Configuration;
    :cond_0
    iget v3, v2, Landroid/content/res/Configuration;->FlipFont:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/content/res/Configuration;->FlipFont:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1352
    .end local v1    # "before":I
    .end local v2    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 152
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/BaseStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startAppNotificationSettingsActivity(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Intent;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/BaseStatusBar;->startAppOwnNotificationSettingsActivity(Landroid/content/Intent;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/BaseStatusBar;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->FlipFontSwitched()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/BaseStatusBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->registerPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$700()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method private alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z
    .locals 1
    .param p1, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "newNotification"    # Landroid/app/Notification;

    .prologue
    .line 3588
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsNetworkAvailable()Z
    .locals 1

    .prologue
    .line 3790
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkAvailable:Z

    return v0
.end method

.method private getKnoxName(I)Ljava/lang/String;
    .locals 2
    .param p1, "personaID"    # I

    .prologue
    .line 2667
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 2668
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 2671
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/os/PersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPolicy(ILjava/lang/String;I)Z
    .locals 11
    .param p1, "userId"    # I
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "policyArray"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 367
    const-string v1, "true"

    .line 368
    .local v1, "TRUE":Ljava/lang/String;
    const-string v0, "false"

    .line 373
    .local v0, "FALSE":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v8, v7

    .line 422
    :cond_0
    :goto_0
    return v8

    .line 379
    :cond_1
    const/4 v2, 0x0

    .line 380
    .local v2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 385
    :pswitch_1
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 394
    :goto_1
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 395
    .local v5, "policy":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 397
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v6, :cond_2

    .line 398
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v9, "persona"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    iput-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 400
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-eqz v6, :cond_0

    .line 403
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    const-string v9, "persona_policy"

    invoke-virtual {v6, v9}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaPolicyManager;

    .line 405
    .local v4, "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    if-eqz v4, :cond_0

    .line 408
    const-string v6, "Notifications"

    invoke-virtual {v4, p1, v6, p2}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 412
    const-string v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "false"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 413
    :cond_3
    invoke-virtual {v2, p1, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .end local v4    # "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    :cond_4
    :goto_2
    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v6, :cond_5

    .line 421
    const-string v6, "KnoxNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPolicy: policy value returned = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_5
    const-string v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    :goto_3
    move v8, v6

    goto :goto_0

    .line 382
    .end local v5    # "policy":Ljava/lang/String;
    :pswitch_2
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 383
    goto :goto_1

    .line 388
    :pswitch_3
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 389
    goto :goto_1

    .line 415
    .restart local v5    # "policy":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 416
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "KnoxNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPolicy: threw an exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    move v6, v8

    .line 422
    goto :goto_3

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "slot"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 1409
    const/4 v2, 0x0

    .line 1410
    .local v2, "propVal":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v3

    .line 1411
    .local v3, "subId":[J
    const/4 v5, 0x0

    aget-wide v6, v3, v5

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 1412
    .local v0, "phoneId":I
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1413
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1414
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1415
    .local v4, "values":[Ljava/lang/String;
    if-ltz v0, :cond_0

    array-length v5, v4

    if-ge v0, v5, :cond_0

    aget-object v5, v4, v0

    if-eqz v5, :cond_0

    .line 1416
    aget-object v2, v4, v0

    .line 1419
    .end local v4    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p2, v2

    goto :goto_0
.end method

.method private hasKnoxTitleChanged(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 2676
    const/4 v2, 0x0

    .line 2677
    .local v2, "newName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2678
    .local v1, "myKnoxAdmin":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2680
    .local v6, "realPackageName":Ljava/lang/String;
    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-direct {v0, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 2681
    .local v0, "edManager":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMyKnoxAdmin()Ljava/lang/String;

    move-result-object v1

    .line 2682
    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    const-string v7, "com.samsung.knoxpb.mdm"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move-object v3, v2

    .line 2693
    .end local v2    # "newName":Ljava/lang/String;
    .local v3, "newName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2685
    .end local v3    # "newName":Ljava/lang/String;
    .restart local v2    # "newName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v5

    .line 2686
    .local v5, "policy":Landroid/sec/enterprise/ApplicationPolicy;
    invoke-virtual {v5, p1, v8}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2687
    if-nez v2, :cond_2

    .line 2689
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2690
    .local v4, "parts":[Ljava/lang/String;
    aget-object v6, v4, v8

    .line 2691
    invoke-virtual {v5, v6, v8}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .end local v4    # "parts":[Ljava/lang/String;
    :cond_2
    move-object v3, v2

    .line 2693
    .end local v2    # "newName":Ljava/lang/String;
    .restart local v3    # "newName":Ljava/lang/String;
    goto :goto_0
.end method

.method private hideExistingBadgeOfBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "bigContentViewLocal"    # Landroid/view/View;

    .prologue
    .line 2593
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    .line 2594
    const-string v1, "KnoxNotification"

    const-string v2, "----- Inside hideExistingBadgeOfBigContentView -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    :cond_0
    const v1, 0x10203f5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2601
    .local v0, "badgeLarge":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2603
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2604
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_1

    .line 2605
    const-string v1, "KnoxNotification"

    const-string v2, "----- hideExistingBadgeOfBigContentView: Hiding badgeLarge  -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2613
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_2

    .line 2614
    const-string v1, "KnoxNotification"

    const-string v2, "----- hideExistingBadgeOfBigContentView: This is media notification -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    .line 2622
    :cond_3
    return-void
.end method

.method private hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V
    .locals 5
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "contentViewLocal"    # Landroid/view/View;
    .param p3, "publicOrPrivate"    # Z

    .prologue
    const/16 v4, 0x8

    .line 2555
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    .line 2556
    const-string v2, "KnoxNotification"

    const-string v3, "----- Inside hideExistingBadgeOfContentView -----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    :cond_0
    const v2, 0x1020405

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2563
    .local v0, "badgeLine2":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 2565
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2566
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_1

    .line 2567
    const-string v2, "KnoxNotification"

    const-string v3, "----- hideExistingBadgeOfContentView: Hiding badgeLine2  -----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    :cond_1
    const v2, 0x1020408

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2574
    .local v1, "badgeLine3":Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 2576
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2577
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_2

    .line 2578
    const-string v2, "KnoxNotification"

    const-string v3, "----- hideExistingBadgeOfContentView: Hiding badgeLine3  -----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    :cond_2
    return-void
.end method

.method private inflateGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 24
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1637
    const v20, 0x7f0e0378

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewStub;

    .line 1638
    .local v19, "stub":Landroid/view/ViewStub;
    if-eqz v19, :cond_0

    .line 1639
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1641
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v17

    .line 1642
    .local v17, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 1644
    .local v16, "pmUser":Landroid/content/pm/PackageManager;
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 1645
    const v20, 0x7f0e01c0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1646
    .local v11, "guts":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 1647
    .local v14, "pkg":Ljava/lang/String;
    move-object v9, v14

    .line 1648
    .local v9, "appname":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1649
    .local v15, "pkgicon":Landroid/graphics/drawable/Drawable;
    const/4 v7, -0x1

    .line 1651
    .local v7, "appUid":I
    const/16 v20, 0x2200

    :try_start_0
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 1654
    .local v12, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v12, :cond_1

    .line 1655
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1656
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 1657
    iget v7, v12, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    .end local v12    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1667
    const v20, 0x1020006

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1670
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v20

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_3

    .line 1671
    const v20, 0x7f0e01c2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/DateTimeView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 1675
    :goto_1
    const v20, 0x7f0e01c1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1676
    const v20, 0x7f0e01c5

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 1677
    .local v18, "settingsButton":Landroid/view/View;
    const v20, 0x7f0e01c4

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1679
    .local v4, "appSettingsButton":Landroid/view/View;
    if-ltz v7, :cond_5

    .line 1680
    move v8, v7

    .line 1681
    .local v8, "appUidF":I
    new-instance v20, Lcom/android/systemui/statusbar/BaseStatusBar$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v8}, Lcom/android/systemui/statusbar/BaseStatusBar$9;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1687
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v21, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1691
    .local v6, "appSettingsQueryIntent":Landroid/content/Intent;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 1692
    .local v13, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_4

    .line 1693
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0d028b

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v9, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1699
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1701
    .local v5, "appSettingsLaunchIntent":Landroid/content/Intent;
    new-instance v20, Lcom/android/systemui/statusbar/BaseStatusBar$10;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v5, v2, v8}, Lcom/android/systemui/statusbar/BaseStatusBar$10;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Intent;Landroid/service/notification/StatusBarNotification;I)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1717
    .end local v5    # "appSettingsLaunchIntent":Landroid/content/Intent;
    .end local v6    # "appSettingsQueryIntent":Landroid/content/Intent;
    .end local v8    # "appUidF":I
    .end local v13    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_2
    return-void

    .line 1659
    .end local v4    # "appSettingsButton":Landroid/view/View;
    .end local v18    # "settingsButton":Landroid/view/View;
    :catch_0
    move-exception v10

    .line 1661
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    goto/16 :goto_0

    .line 1673
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const v20, 0x7f0e01c2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/DateTimeView;

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/DateTimeView;->setTime(J)V

    goto/16 :goto_1

    .line 1710
    .restart local v4    # "appSettingsButton":Landroid/view/View;
    .restart local v6    # "appSettingsQueryIntent":Landroid/content/Intent;
    .restart local v8    # "appUidF":I
    .restart local v13    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v18    # "settingsButton":Landroid/view/View;
    :cond_4
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1713
    .end local v6    # "appSettingsQueryIntent":Landroid/content/Intent;
    .end local v8    # "appUidF":I
    .end local v13    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1714
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-result v0

    return v0
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z
    .locals 54
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "isHeadsUp"    # Z

    .prologue
    .line 2114
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v39

    .line 2117
    .local v39, "pmUser":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMaxHeight:I

    move/from16 v35, v0

    .line 2118
    .local v35, "maxHeight":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v46, v0

    .line 2121
    .local v46, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2122
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->PRIVATE_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2124
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->BIG_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2129
    :cond_0
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v16, v0

    .line 2130
    .local v16, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v13, v7, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2132
    .local v13, "bigContentView":Landroid/widget/RemoteViews;
    if-eqz p3, :cond_1

    .line 2135
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0291

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    .line 2142
    :cond_1
    if-nez v16, :cond_2

    .line 2143
    const/4 v7, 0x0

    .line 2504
    :goto_0
    return v7

    .line 2146
    :cond_2
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 2147
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "publicNotification: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_3
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v43, v0

    .line 2153
    .local v43, "publicNotification":Landroid/app/Notification;
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v43, :cond_4

    .line 2154
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    sget-object v8, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->PUBLIC_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2163
    :cond_4
    const/16 v27, 0x0

    .line 2164
    .local v27, "hasUserChangedExpansion":Z
    const/16 v51, 0x0

    .line 2165
    .local v51, "userExpanded":Z
    const/16 v52, 0x0

    .line 2167
    .local v52, "userLocked":Z
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_1a

    .line 2168
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v45, v0

    .line 2169
    .local v45, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {v45 .. v45}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v27

    .line 2170
    invoke-virtual/range {v45 .. v45}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v51

    .line 2171
    invoke-virtual/range {v45 .. v45}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v52

    .line 2172
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->reset()V

    .line 2173
    if-eqz v27, :cond_5

    .line 2174
    move-object/from16 v0, v45

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 2185
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 2186
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    move-result-object v53

    .line 2187
    .local v53, "vetoButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0d024c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2193
    const v7, 0x7f0e0374

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 2195
    .local v24, "expanded":Lcom/android/systemui/statusbar/NotificationContentView;
    const v7, 0x7f0e0375

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 2198
    .local v26, "expandedPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    const v7, 0x7f0e0376

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 2202
    .local v25, "expandedKnox":Lcom/android/systemui/statusbar/NotificationContentView;
    const/high16 v7, 0x60000

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    .line 2204
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseEventNotification:Z

    if-eqz v7, :cond_6

    const-string v7, "com.sec.android.app.eventnotification"

    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2206
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c03ae

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 2207
    .local v22, "eventNotiHeight":I
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setMinHeight(I)V

    .line 2208
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMinHeight:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setMinHeight(I)V

    .line 2211
    .end local v22    # "eventNotiHeight":I
    :cond_6
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v15, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2212
    .local v15, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v15, :cond_1b

    .line 2213
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v15, v7, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v34

    .line 2215
    .local v34, "listener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v45

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2232
    .end local v34    # "listener":Landroid/view/View$OnClickListener;
    :goto_2
    const/16 v17, 0x0

    .line 2233
    .local v17, "contentViewLocal":Landroid/view/View;
    const/4 v14, 0x0

    .line 2235
    .local v14, "bigContentViewLocal":Landroid/view/View;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v7, v1, v8}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v17

    .line 2237
    if-eqz v13, :cond_7

    .line 2238
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v24

    invoke-virtual {v13, v7, v0, v8}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 2248
    :cond_7
    if-eqz v17, :cond_9

    .line 2251
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2252
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    .line 2255
    :cond_8
    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2256
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 2258
    :cond_9
    if-eqz v14, :cond_b

    .line 2259
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2260
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 2262
    :cond_a
    const/4 v7, 0x1

    invoke-virtual {v14, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2263
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    .line 2267
    :cond_b
    const/16 v44, 0x0

    .line 2268
    .local v44, "publicViewLocal":Landroid/view/View;
    if-eqz v43, :cond_d

    .line 2270
    :try_start_1
    move-object/from16 v0, v43

    iget-object v7, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v26

    invoke-virtual {v7, v8, v0, v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v44

    .line 2273
    if-eqz v44, :cond_d

    .line 2275
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2276
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    .line 2279
    :cond_c
    const/4 v7, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2280
    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2292
    :cond_d
    :goto_3
    :try_start_2
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v32

    .line 2293
    .local v32, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v32

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, p1

    iput v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2298
    .end local v32    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_4
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v7, :cond_e

    .line 2299
    const-string v7, "KnoxNotification"

    const-string v8, "-----------------------BaseStatusBar--------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    const-string v7, "KnoxNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notification - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    const-string v7, "KnoxNotification"

    const-string v8, "-----------------------BaseStatusBar--------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    :cond_e
    const/16 v19, 0x0

    .line 2305
    .local v19, "customPublicViewLocal":Landroid/view/View;
    if-nez v44, :cond_13

    .line 2306
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 2307
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040040

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 2310
    const v7, 0x7f0e0133

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/view/ViewGroup;

    .line 2312
    .local v38, "parentPublicViewLocal":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040055

    const/4 v9, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v44

    .line 2315
    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2316
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 2325
    .end local v38    # "parentPublicViewLocal":Landroid/view/ViewGroup;
    :goto_5
    const-string v7, "KnoxNotification"

    const-string v8, "----- inflateViews : modified publicViewLocal -----"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    const v7, 0x7f0e0125

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/TextView;

    .line 2328
    .local v49, "title":Landroid/widget/TextView;
    :try_start_3
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2334
    :goto_6
    const v7, 0x7f0e01c7

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 2335
    .local v28, "icon":Landroid/widget/ImageView;
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_1d

    if-eqz v19, :cond_1d

    const v7, 0x7f0e0134

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    :goto_7
    check-cast v7, Landroid/widget/ImageView;

    move-object/from16 v41, v7

    check-cast v41, Landroid/widget/ImageView;

    .line 2342
    .local v41, "profileBadge":Landroid/widget/ImageView;
    new-instance v6, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget v11, v11, Landroid/app/Notification;->number:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 2349
    .local v6, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 2350
    .local v29, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2351
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2353
    :cond_f
    const v7, 0x1080672

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2355
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050059

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    .line 2357
    .local v36, "padding":I
    move-object/from16 v0, v28

    move/from16 v1, v36

    move/from16 v2, v36

    move/from16 v3, v36

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2358
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->color:I

    if-eqz v7, :cond_10

    .line 2359
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->color:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2364
    .end local v36    # "padding":I
    :cond_10
    if-eqz v41, :cond_11

    .line 2365
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v42

    .line 2367
    .local v42, "profileDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v42, :cond_1e

    .line 2368
    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2369
    const/4 v7, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2375
    .end local v42    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_11
    :goto_8
    const v7, 0x1020096

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    .line 2376
    .local v40, "privateTime":Landroid/view/View;
    const v7, 0x7f0e01c8

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/DateTimeView;

    .line 2377
    .local v47, "time":Landroid/widget/DateTimeView;
    if-eqz v40, :cond_12

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_12

    .line 2378
    const/4 v7, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Landroid/widget/DateTimeView;->setVisibility(I)V

    .line 2379
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    move-object/from16 v0, v47

    invoke-virtual {v0, v8, v9}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 2382
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSensitiveTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 2384
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v7, v8, v9}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    move-result v50

    .line 2387
    .local v50, "topPadding":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2389
    const/4 v7, 0x1

    move-object/from16 v0, p1

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 2394
    .end local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v28    # "icon":Landroid/widget/ImageView;
    .end local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v40    # "privateTime":Landroid/view/View;
    .end local v41    # "profileBadge":Landroid/widget/ImageView;
    .end local v47    # "time":Landroid/widget/DateTimeView;
    .end local v49    # "title":Landroid/widget/TextView;
    .end local v50    # "topPadding":I
    :cond_13
    const/16 v18, 0x0

    .line 2395
    .local v18, "customKnoxViewLocal":Landroid/view/View;
    if-nez v18, :cond_17

    .line 2396
    const/16 v33, 0x0

    .line 2397
    .local v33, "knoxViewLocal":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040040

    const/4 v9, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 2400
    const v7, 0x7f0e0133

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/view/ViewGroup;

    .line 2402
    .local v37, "parentKnoxViewLocal":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x1090096

    const/4 v9, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v33

    .line 2406
    const-string v7, "KnoxNotification"

    const-string v8, "----- inflateViews : modified KnoxViewLocal -----"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    const v7, 0x1020016

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/TextView;

    .line 2409
    .restart local v49    # "title":Landroid/widget/TextView;
    :try_start_4
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2415
    :goto_9
    const v7, 0x1020006

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 2417
    .restart local v28    # "icon":Landroid/widget/ImageView;
    const v7, 0x7f0e0134

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/ImageView;

    .line 2420
    .restart local v41    # "profileBadge":Landroid/widget/ImageView;
    new-instance v6, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget v11, v11, Landroid/app/Notification;->number:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 2427
    .restart local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 2428
    .restart local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2429
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 2430
    const v7, 0x1080672

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2432
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050059

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    .line 2434
    .restart local v36    # "padding":I
    move-object/from16 v0, v28

    move/from16 v1, v36

    move/from16 v2, v36

    move/from16 v3, v36

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2437
    .end local v36    # "padding":I
    :cond_14
    if-eqz v41, :cond_15

    .line 2438
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v42

    .line 2440
    .restart local v42    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v42, :cond_1f

    .line 2441
    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2442
    const/4 v7, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2448
    .end local v42    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_15
    :goto_a
    const v7, 0x1020096

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    .line 2449
    .restart local v40    # "privateTime":Landroid/view/View;
    if-eqz v40, :cond_16

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_16

    .line 2450
    const v7, 0x1020096

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v48

    .line 2451
    .local v48, "timeStub":Landroid/view/View;
    const/4 v7, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2452
    const v7, 0x1020096

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/DateTimeView;

    .line 2454
    .local v20, "dateTimeView":Landroid/widget/DateTimeView;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 2457
    .end local v20    # "dateTimeView":Landroid/widget/DateTimeView;
    .end local v48    # "timeStub":Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 2459
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v7, v8, v9}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    move-result v50

    .line 2462
    .restart local v50    # "topPadding":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2463
    const/4 v7, 0x1

    move-object/from16 v0, p1

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 2467
    .end local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v28    # "icon":Landroid/widget/ImageView;
    .end local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v33    # "knoxViewLocal":Landroid/view/View;
    .end local v37    # "parentKnoxViewLocal":Landroid/view/ViewGroup;
    .end local v40    # "privateTime":Landroid/view/View;
    .end local v41    # "profileBadge":Landroid/widget/ImageView;
    .end local v49    # "title":Landroid/widget/TextView;
    .end local v50    # "topPadding":I
    :cond_17
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v7

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClearable(Z)V

    .line 2476
    move-object/from16 v0, v45

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2477
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMinHeight:I

    move/from16 v0, v35

    invoke-virtual {v7, v8, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeightRange(II)V

    .line 2478
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 2479
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 2480
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_20

    if-eqz v19, :cond_20

    .end local v19    # "customPublicViewLocal":Landroid/view/View;
    :goto_b
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    .line 2483
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    .line 2485
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setBigContentView(Landroid/view/View;)V

    .line 2487
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseEventNotification:Z

    if-eqz v7, :cond_18

    const-string v7, "com.sec.android.app.eventnotification"

    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2489
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c03ae

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 2490
    .restart local v22    # "eventNotiHeight":I
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUseEventNotification eventNotiHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    add-int/lit8 v8, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeightRange(II)V

    .line 2494
    .end local v22    # "eventNotiHeight":I
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 2497
    if-eqz v27, :cond_19

    .line 2500
    move-object/from16 v0, v45

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 2502
    :cond_19
    move-object/from16 v0, v45

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 2503
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 2504
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2178
    .end local v14    # "bigContentViewLocal":Landroid/view/View;
    .end local v15    # "contentIntent":Landroid/app/PendingIntent;
    .end local v17    # "contentViewLocal":Landroid/view/View;
    .end local v18    # "customKnoxViewLocal":Landroid/view/View;
    .end local v24    # "expanded":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v25    # "expandedKnox":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v26    # "expandedPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v44    # "publicViewLocal":Landroid/view/View;
    .end local v45    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v53    # "vetoButton":Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/LayoutInflater;

    .line 2180
    .local v31, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0400b5

    const/4 v8, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v45

    check-cast v45, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2182
    .restart local v45    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2220
    .end local v31    # "inflater":Landroid/view/LayoutInflater;
    .restart local v15    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v24    # "expanded":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v25    # "expandedKnox":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v26    # "expandedPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v53    # "vetoButton":Landroid/view/View;
    :cond_1b
    new-instance v7, Lcom/android/systemui/statusbar/BaseStatusBar$14;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$14;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 2242
    .restart local v14    # "bigContentViewLocal":Landroid/view/View;
    .restart local v17    # "contentViewLocal":Landroid/view/View;
    :catch_0
    move-exception v21

    .line 2243
    .local v21, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2244
    .local v30, "ident":Ljava/lang/String;
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t inflate view for notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2245
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2283
    .end local v21    # "e":Ljava/lang/RuntimeException;
    .end local v30    # "ident":Ljava/lang/String;
    .restart local v44    # "publicViewLocal":Landroid/view/View;
    :catch_1
    move-exception v21

    .line 2284
    .restart local v21    # "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2285
    .restart local v30    # "ident":Ljava/lang/String;
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t inflate public view for notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2286
    const/16 v44, 0x0

    goto/16 :goto_3

    .line 2294
    .end local v21    # "e":Ljava/lang/RuntimeException;
    .end local v30    # "ident":Ljava/lang/String;
    :catch_2
    move-exception v23

    .line 2295
    .local v23, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed looking up ApplicationInfo for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 2319
    .end local v23    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v19    # "customPublicViewLocal":Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040055

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v44

    .line 2322
    const/4 v7, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2323
    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    goto/16 :goto_5

    .line 2330
    .restart local v49    # "title":Landroid/widget/TextView;
    :catch_3
    move-exception v21

    .line 2331
    .local v21, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 2335
    .end local v21    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v28    # "icon":Landroid/widget/ImageView;
    :cond_1d
    const v7, 0x7f0e01c9

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    goto/16 :goto_7

    .line 2371
    .restart local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .restart local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v41    # "profileBadge":Landroid/widget/ImageView;
    .restart local v42    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1e
    const/16 v7, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 2411
    .end local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v28    # "icon":Landroid/widget/ImageView;
    .end local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v41    # "profileBadge":Landroid/widget/ImageView;
    .end local v42    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "customKnoxViewLocal":Landroid/view/View;
    .restart local v33    # "knoxViewLocal":Landroid/view/View;
    .restart local v37    # "parentKnoxViewLocal":Landroid/view/ViewGroup;
    :catch_4
    move-exception v21

    .line 2412
    .restart local v21    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 2444
    .end local v21    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .restart local v28    # "icon":Landroid/widget/ImageView;
    .restart local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v41    # "profileBadge":Landroid/widget/ImageView;
    .restart local v42    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1f
    const/16 v7, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    .end local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v28    # "icon":Landroid/widget/ImageView;
    .end local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v33    # "knoxViewLocal":Landroid/view/View;
    .end local v37    # "parentKnoxViewLocal":Landroid/view/ViewGroup;
    .end local v41    # "profileBadge":Landroid/widget/ImageView;
    .end local v42    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    .end local v49    # "title":Landroid/widget/TextView;
    :cond_20
    move-object/from16 v19, v44

    .line 2480
    goto/16 :goto_b
.end method

.method private isForceSanitizationRequired(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 6
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 654
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 655
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    .line 656
    .local v3, "userId":I
    const/4 v0, 0x0

    .line 658
    .local v0, "bReturn":Z
    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    if-eq v3, v4, :cond_3

    .line 663
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v1, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 665
    .local v1, "contentView":Landroid/widget/RemoteViews;
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v4, :cond_0

    .line 666
    const-string v4, "KnoxNotification"

    const-string v5, "----- Our attached knox_content_view is found -----"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    const v5, 0x10203f3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    .line 672
    :cond_1
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v4, :cond_2

    .line 673
    const-string v4, "KnoxNotification"

    const-string v5, "----- Application provided RemoteView, so forcing sanitization -----"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_2
    const/4 v0, 0x1

    .line 679
    .end local v1    # "contentView":Landroid/widget/RemoteViews;
    :cond_3
    return v0
.end method

.method protected static isPersona(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 341
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p0, v0, :cond_0

    .line 342
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPersonaInKioskMode(I)Z
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 359
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSIMandOperatorMatched()Z
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3749
    const-string v9, "gsm.sim.operator.numeric"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3750
    .local v1, "currentSIM":Ljava/lang/String;
    const-string v9, "ril.currentplmn"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3753
    .local v0, "currentLocation":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Framework_ReplaceDataTypeIconAsOpBrand"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3754
    .local v2, "mDataTypeBrand":Ljava/lang/String;
    const-string v9, "ORANGE"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 3781
    :cond_0
    :goto_0
    return v7

    .line 3757
    :cond_1
    const-string v9, "StatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSIMandOperatorMatched  currentPlmn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperatorSIM()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3760
    const-string v9, "StatusBar"

    const-string v10, "isSIMandOperatorMatched SIM is matched!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    const-string v9, "domestic"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    .line 3762
    goto :goto_0

    .line 3766
    :cond_2
    const-string v9, "StatusBar"

    const-string v10, "isSIMandOperatorMatched SIM is NOT matched!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    const-string v9, "20801"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "20802"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3768
    :cond_3
    const-string v9, "gsm.sim.operator.numeric"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3769
    .local v6, "simNumeric":Ljava/lang/String;
    const-string v9, "gsm.operator.numeric"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3770
    .local v4, "plmnNumeric":Ljava/lang/String;
    const-string v9, "StatusBar"

    const-string v10, "isSIMandOperatorMatched SIM is matched for Orange!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3771
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 3772
    invoke-virtual {v6, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3773
    .local v5, "simMCC":Ljava/lang/String;
    invoke-virtual {v4, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3774
    .local v3, "plmnMCC":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    .line 3775
    goto :goto_0
.end method

.method private knoxContainerInLockMode(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 761
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 762
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    .line 763
    const-string v2, "KnoxNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get KnoxInLockMode for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_0
    :goto_0
    return v1

    .line 766
    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 767
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 768
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    .line 769
    const-string v2, "KnoxNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get KnoxInLockMode for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 772
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_3

    .line 773
    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get KnoxInLockMode for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    goto :goto_0
.end method

.method private knoxContainerInSuperLockMode(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 582
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 583
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    .line 584
    const-string v2, "KnoxNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get knoxInSuperLockMode for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    :goto_0
    return v1

    .line 587
    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 588
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 589
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    .line 590
    const-string v2, "KnoxNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get knoxInSuperLockMode for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 593
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_3

    .line 594
    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get knoxInSuperLockMode for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    goto :goto_0
.end method

.method private reSanitizePendingIntentIfNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3404
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3406
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    .line 3407
    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----- reSanitizePendingIntentIfNeeded : contentIntent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    :cond_0
    if-nez v0, :cond_3

    .line 3412
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_1

    .line 3413
    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----- reSanitizePendingIntentIfNeeded : entry.isSanitizedPendingIntent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    :cond_1
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-eqz v1, :cond_2

    .line 3420
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->sanitizePendingIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3422
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3435
    :cond_2
    :goto_0
    return-void

    .line 3425
    :cond_3
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-eqz v1, :cond_2

    .line 3429
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_4

    .line 3430
    const-string v1, "KnoxNotification"

    const-string v2, "----- reSanitizePendingIntentIfNeeded : But doing un-sanitize -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    :cond_4
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3432
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    goto :goto_0
.end method

.method private registerPersonaObserver(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 741
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 742
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Context;II)V

    .line 744
    .local v0, "observer":Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 745
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    .line 746
    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register container observer for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    .end local v0    # "observer":Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;
    :cond_0
    return-void
.end method

.method private reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;
    .locals 9
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "remoteViewType"    # Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    .prologue
    const v8, 0x7f0e0133

    .line 2630
    const-string v5, "KnoxNotification"

    const-string v6, "----- Inside reimposeBadgeAtBottomRight -----"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 2633
    .local v2, "notification":Landroid/app/Notification;
    const/4 v3, 0x0

    .line 2634
    .local v3, "notificationContentView":Landroid/widget/RemoteViews;
    sget-object v5, Lcom/android/systemui/statusbar/BaseStatusBar$16;->$SwitchMap$com$android$systemui$statusbar$BaseStatusBar$RemoteViewType:[I

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 2646
    :goto_0
    const/4 v1, 0x0

    .line 2647
    .local v1, "contentView":Landroid/widget/RemoteViews;
    if-eqz v3, :cond_1

    .line 2648
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2650
    .local v4, "profileDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_0

    .line 2663
    .end local v3    # "notificationContentView":Landroid/widget/RemoteViews;
    .end local v4    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v3

    .line 2636
    .end local v1    # "contentView":Landroid/widget/RemoteViews;
    .restart local v3    # "notificationContentView":Landroid/widget/RemoteViews;
    :pswitch_0
    iget-object v5, v2, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v3, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2637
    goto :goto_0

    .line 2639
    :pswitch_1
    iget-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2640
    goto :goto_0

    .line 2642
    :pswitch_2
    iget-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 2653
    .restart local v1    # "contentView":Landroid/widget/RemoteViews;
    .restart local v4    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    .end local v1    # "contentView":Landroid/widget/RemoteViews;
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f040040

    invoke-direct {v1, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2656
    .restart local v1    # "contentView":Landroid/widget/RemoteViews;
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2657
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const v5, 0x7f0e0134

    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2658
    invoke-virtual {v1, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 2660
    invoke-virtual {v1, v8, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 2661
    const-string v5, "KnoxNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----- returning contentView = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    move-object v3, v1

    .line 2663
    goto :goto_1

    .line 2634
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1892
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1894
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1898
    :cond_0
    :goto_0
    return-void

    .line 1895
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setIsNetworkAvailable(Z)V
    .locals 3
    .param p0, "value"    # Z

    .prologue
    .line 3785
    sput-boolean p0, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkAvailable:Z

    .line 3786
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsNetworkAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3787
    return-void
.end method

.method private shouldExpandOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3111
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    const/16 v1, 0x102

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_1

    .line 3115
    :cond_0
    const/4 v0, 0x1

    .line 3117
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3122
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAppNotificationSettingsActivity(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    .prologue
    .line 1589
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1591
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1599
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    .line 1600
    return-void
.end method

.method private startAppOwnNotificationSettingsActivity(Landroid/content/Intent;ILjava/lang/String;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "notificationId"    # I
    .param p3, "notificationTag"    # Ljava/lang/String;
    .param p4, "appUid"    # I

    .prologue
    .line 1578
    const-string v0, "notification_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1579
    const-string v0, "notification_tag"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1580
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    .line 1581
    return-void
.end method

.method private startNotificationGutsIntent(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "appUid"    # I

    .prologue
    .line 1603
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isInstantDismiss()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->goToKeyguard()V

    .line 1604
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 1605
    .local v0, "keyguardShowing":Z
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$8;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar$8;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZLandroid/content/Intent;I)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isInstantDismiss()Z

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    .line 1634
    return-void
.end method

.method private unregisterPersonaObserver(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 751
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;

    .line 752
    .local v0, "observer":Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;
    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->unregisterPersonaObserver()V

    .line 754
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister container observer for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_0
    return-void
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    .prologue
    .line 1087
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1088
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1089
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_0

    .line 1090
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1091
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1094
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    return-void
.end method

.method private updateHeadsUpViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3444
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    .line 3445
    return-void
.end method

.method private updateKnoxNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 11
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "isHeadsUp"    # Z

    .prologue
    .line 3508
    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    .line 3509
    .local v9, "knoxViewLocal":Landroid/view/View;
    if-eqz v9, :cond_1

    .line 3510
    const v1, 0x1020006

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 3513
    .local v7, "icon":Landroid/widget/ImageView;
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->icon:I

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->iconLevel:I

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->number:I

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 3520
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3521
    .local v8, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3522
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-virtual {v1, v8}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3523
    const v1, 0x1080672

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3525
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 3527
    .local v10, "padding":I
    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 3529
    .end local v10    # "padding":I
    :cond_0
    iput-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    .line 3531
    .end local v0    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v7    # "icon":Landroid/widget/ImageView;
    .end local v8    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3532
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    .line 3533
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3534
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 3535
    :cond_2
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3537
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    .line 3540
    :cond_3
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSensitiveTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 3541
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 3543
    :cond_4
    return-void
.end method

.method private updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3439
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    .line 3440
    return-void
.end method

.method private updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 9
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "isHeadsUp"    # Z

    .prologue
    .line 3449
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v2, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3452
    .local v2, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v0, v6, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3457
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v5, v6, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 3458
    .local v5, "publicVersion":Landroid/app/Notification;
    if-eqz v5, :cond_2

    iget-object v4, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3462
    .local v4, "publicContentView":Landroid/widget/RemoteViews;
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v2, v6, v7, v8}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3463
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3464
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v0, v6, v7, v8}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3467
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 3468
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v4, v6, v7, v8}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3472
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateKnoxNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    .line 3474
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v1, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3478
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    const/4 v3, 0x0

    .line 3479
    .local v3, "listener":Landroid/view/View$OnClickListener;
    if-eqz v1, :cond_3

    .line 3480
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v3

    .line 3497
    :goto_1
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3498
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 3499
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyContentUpdated()V

    .line 3500
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetHeight()V

    .line 3501
    return-void

    .line 3458
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v3    # "listener":Landroid/view/View$OnClickListener;
    .end local v4    # "publicContentView":Landroid/widget/RemoteViews;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 3486
    .restart local v1    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v3    # "listener":Landroid/view/View$OnClickListener;
    .restart local v4    # "publicContentView":Landroid/widget/RemoteViews;
    :cond_3
    new-instance v3, Lcom/android/systemui/statusbar/BaseStatusBar$15;

    .end local v3    # "listener":Landroid/view/View$OnClickListener;
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$15;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .restart local v3    # "listener":Landroid/view/View$OnClickListener;
    goto :goto_1
.end method

.method private updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 8
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "knoxViewLocal"    # Landroid/view/View;

    .prologue
    const v7, 0x7f0d0309

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2509
    if-eqz p2, :cond_0

    .line 2510
    const v3, 0x102007f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2512
    .local v2, "text":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 2513
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->getKnoxName(I)Ljava/lang/String;

    move-result-object v0

    .line 2514
    .local v0, "knoxName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2515
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "KNOX"

    aput-object v5, v4, v6

    invoke-virtual {v3, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2537
    .end local v0    # "knoxName":Ljava/lang/String;
    .end local v2    # "text":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 2517
    .restart local v0    # "knoxName":Ljava/lang/String;
    .restart local v2    # "text":Landroid/widget/TextView;
    :cond_1
    const-string v3, "com.sec.knox.bridge/com.sec.knox.bridge.activity.SwitchB2BActivity"

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->hasKnoxTitleChanged(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2518
    .local v1, "myKnoxName":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 2519
    const-string v3, "KNOX"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2521
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v3, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2526
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v3, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2532
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v3, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSensitiveTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "publicViewLocal"    # Landroid/view/View;

    .prologue
    .line 2540
    if-eqz p2, :cond_0

    .line 2541
    const v1, 0x7f0e01ca

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2542
    .local v0, "text":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 2543
    const v1, 0x7f0d0307

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2546
    .end local v0    # "text":Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2925
    if-nez p1, :cond_0

    .line 2931
    :goto_0
    return-void

    .line 2929
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2930
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0
.end method

.method public animateCollapsePanels(IZ)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "force"    # Z

    .prologue
    .line 2821
    return-void
.end method

.method protected applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const v2, 0x10203f3

    const/16 v4, 0x15

    const/4 v3, 0x1

    .line 1534
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1541
    :cond_1
    iget v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2

    iget v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v1, v4, :cond_2

    .line 1543
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 1544
    iput-boolean v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    .line 1557
    :cond_2
    :goto_0
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_3

    .line 1558
    iget v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-lt v1, v4, :cond_6

    .line 1567
    :cond_3
    :goto_1
    return-void

    .line 1548
    :cond_4
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v0, v1, Landroid/app/Notification;->color:I

    .line 1549
    .local v0, "color":I
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1550
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .end local v0    # "color":I
    :cond_5
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(I)V

    goto :goto_0

    .line 1564
    :cond_6
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method public applyEDMPolicy()V
    .locals 0

    .prologue
    .line 3712
    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 1824
    const/16 v0, 0x3ff

    .line 1825
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1826
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1827
    return-void
.end method

.method protected cancelPreloadingRecents()V
    .locals 1

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1952
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->cancelPreloadingRecents()V

    .line 1954
    :cond_0
    return-void
.end method

.method protected abstract createAndAddWindows()V
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    .prologue
    .line 1888
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 11
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v10, 0x0

    .line 2888
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2889
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createNotificationViews(notification="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 2893
    .local v9, "n":Landroid/app/Notification;
    new-instance v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v1, v2, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 2895
    .local v8, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2897
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget v3, v9, Landroid/app/Notification;->icon:I

    iget v4, v9, Landroid/app/Notification;->iconLevel:I

    iget v5, v9, Landroid/app/Notification;->number:I

    iget-object v6, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 2904
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2905
    iget v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    if-gez v1, :cond_3

    .line 2906
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2907
    const-string v1, "StatusBar"

    const-string v2, "The original notification was cancelled before the synced one was posted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    move-object v7, v10

    .line 2921
    :cond_2
    :goto_1
    return-object v7

    .line 2910
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    goto :goto_0

    .line 2916
    :cond_4
    new-instance v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v7, p1, v8}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 2917
    .local v7, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0, v7, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v10

    .line 2919
    goto :goto_1
.end method

.method public destroy()V
    .locals 6

    .prologue
    .line 3650
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v3, :cond_0

    .line 3651
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3653
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3656
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3658
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3660
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 3661
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3662
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->unregisterPersonaObserver(I)V

    .line 3663
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "KnoxNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "counting container observer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " total size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3668
    .end local v2    # "userId":I
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3672
    :goto_1
    return-void

    .line 3669
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V
    .locals 0
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z
    .param p3, "dismissIfInsecure"    # Z

    .prologue
    .line 1448
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 1449
    return-void
.end method

.method public dismissPopups()V
    .locals 6

    .prologue
    .line 1767
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v4, :cond_0

    .line 1768
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1769
    .local v1, "v":Lcom/android/systemui/statusbar/NotificationGuts;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1771
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1788
    .end local v1    # "v":Lcom/android/systemui/statusbar/NotificationGuts;
    :cond_0
    :goto_0
    return-void

    .line 1773
    .restart local v1    # "v":Lcom/android/systemui/statusbar/NotificationGuts;
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getRight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 1774
    .local v2, "x":I
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getTop()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getActualHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 1775
    .local v3, "y":I
    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 1777
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1778
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1779
    new-instance v4, Lcom/android/systemui/statusbar/BaseStatusBar$12;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$12;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1786
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public filterOutForKnoxContainer(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 13
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 485
    if-nez p1, :cond_1

    .line 577
    :cond_0
    :goto_0
    return v9

    .line 488
    :cond_1
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 489
    .local v5, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    .line 490
    .local v7, "userId":I
    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v8

    if-nez v8, :cond_8

    .line 495
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget v8, v8, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    if-gez v8, :cond_3

    .line 496
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v8, :cond_2

    .line 497
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "persona"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PersonaManager;

    iput-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 499
    :cond_2
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v8}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v9

    :goto_1
    iput v8, v11, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    .line 504
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget v8, v8, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    if-ne v8, v9, :cond_4

    if-nez v7, :cond_4

    const-string v8, "com.android.incallui"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "com.android.server.telecom"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "com.android.mms"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 514
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    if-eqz v3, :cond_6

    const-string v8, "com.sec.knox.bridge"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v10, v9

    :cond_6
    move v9, v10

    goto :goto_0

    :cond_7
    move v8, v10

    .line 499
    goto :goto_1

    .line 524
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v0

    .line 526
    .local v0, "isLockScreen":Z
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->visibility:I

    const/4 v11, -0x1

    if-ne v8, v11, :cond_9

    if-nez v0, :cond_0

    .line 533
    :cond_9
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInSuperLockMode(I)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v8

    if-eqz v8, :cond_a

    if-eqz v3, :cond_a

    const-string v8, "com.android.settings"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 540
    :cond_a
    invoke-virtual {p0, p1, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKnoxNotificationSanitizeNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 541
    iget v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    .line 542
    iget v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v8, v8, -0x4

    iput v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    .line 544
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "|"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "mapKey":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v8, v8, Lcom/android/systemui/statusbar/NotificationData;->mSanitizingToCollapse:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 546
    .local v6, "tEnt":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v6, :cond_c

    .line 547
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v8, v8, Lcom/android/systemui/statusbar/NotificationData;->mSanitizingToCollapse:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :goto_2
    iget-boolean v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-nez v8, :cond_b

    .line 558
    invoke-virtual {p0, p1, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->sanitizePendingIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 560
    .local v4, "pi":Landroid/app/PendingIntent;
    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iput-object v4, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 561
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v8, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v1

    .line 563
    .local v1, "listener":Landroid/view/View$OnClickListener;
    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .end local v1    # "listener":Landroid/view/View$OnClickListener;
    .end local v2    # "mapKey":Ljava/lang/String;
    .end local v4    # "pi":Landroid/app/PendingIntent;
    .end local v6    # "tEnt":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_b
    :goto_3
    move v9, v10

    .line 577
    goto/16 :goto_0

    .line 548
    .restart local v2    # "mapKey":Ljava/lang/String;
    .restart local v6    # "tEnt":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_c
    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v11, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    .line 568
    .end local v2    # "mapKey":Ljava/lang/String;
    .end local v6    # "tEnt":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_d
    iget-boolean v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-ne v8, v9, :cond_e

    .line 569
    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iput-object v12, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 570
    iput-boolean v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    .line 571
    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v8, v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    :cond_e
    iget v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    or-int/lit8 v8, v8, 0x3

    iput v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    .line 575
    iget v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v8, v8, -0x9

    iput v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    goto :goto_3
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1439
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentUserId()I
    .locals 1

    .prologue
    .line 737
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    return v0
.end method

.method protected abstract getMaxKeyguardNotifications()I
.end method

.method protected getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1

    .prologue
    .line 1720
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$11;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected getNotificationTickerText(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2701
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v2, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2703
    .local v2, "tickerText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getCurrentUserId()I

    move-result v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-eq v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2704
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 2705
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v0, :cond_2

    .line 2706
    iget v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 2708
    .local v1, "sanitize":Z
    :goto_0
    if-eqz v1, :cond_0

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 2710
    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2712
    .local v3, "title":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 2713
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2714
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v4, :cond_0

    .line 2715
    const-string v4, "KnoxNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----- getNotificationTickerText : tickerText(When Sanitize) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v1    # "sanitize":Z
    .end local v3    # "title":Landroid/widget/TextView;
    :cond_0
    :goto_1
    return-object v2

    .line 2706
    .restart local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2721
    :cond_2
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v4, :cond_0

    .line 2722
    const-string v4, "KnoxNotification"

    const-string v5, "----- NotificationData does not contain specified entry !!! -----"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected getNumberOfActiveSim()I
    .locals 3

    .prologue
    .line 1371
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1372
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumberOfActiveSim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1376
    :goto_0
    return v0

    .line 1375
    :cond_0
    const-string v0, "StatusBar"

    const-string v1, "getNumberOfActiveSim:1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getPackageManagerForUser(I)Landroid/content/pm/PackageManager;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 3679
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 3681
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p1, :cond_0

    .line 3685
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3693
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    return-object v1

    .line 3689
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getPolicyExternal(ILjava/lang/String;I)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "policyArray"    # I

    .prologue
    .line 363
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPolicy(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected getReadySimCount()I
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1381
    const/4 v2, 0x0

    .line 1382
    .local v2, "count":I
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-eqz v7, :cond_3

    .line 1383
    new-array v3, v10, [I

    .line 1384
    .local v3, "phone_on":[I
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone1_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v3, v6

    .line 1385
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone2_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v3, v9

    .line 1386
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "9,9"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1387
    .local v1, "cardStatusTemp":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1388
    .local v0, "cardStatusSlot":[Ljava/lang/String;
    array-length v7, v0

    if-eq v7, v10, :cond_0

    .line 1405
    .end local v0    # "cardStatusSlot":[Ljava/lang/String;
    .end local v1    # "cardStatusTemp":Ljava/lang/String;
    .end local v3    # "phone_on":[I
    :goto_0
    return v6

    .line 1390
    .restart local v0    # "cardStatusSlot":[Ljava/lang/String;
    .restart local v1    # "cardStatusTemp":Ljava/lang/String;
    .restart local v3    # "phone_on":[I
    :cond_0
    const/4 v5, 0x0

    .local v5, "sub":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1391
    const-string v6, "3"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget v6, v3, v5

    if-ne v6, v9, :cond_1

    .line 1392
    add-int/lit8 v2, v2, 0x1

    .line 1390
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v6, v2

    .line 1395
    goto :goto_0

    .line 1397
    .end local v0    # "cardStatusSlot":[Ljava/lang/String;
    .end local v1    # "cardStatusTemp":Ljava/lang/String;
    .end local v3    # "phone_on":[I
    .end local v5    # "sub":I
    :cond_3
    const-string v4, "NOT_READY"

    .line 1398
    .local v4, "simState":Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "sub":I
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1399
    const-string v6, "gsm.sim.state"

    const-string v7, "NOT_READY"

    invoke-static {v6, v5, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1400
    const-string v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1401
    add-int/lit8 v2, v2, 0x1

    .line 1398
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move v6, v2

    .line 1405
    goto :goto_0
.end method

.method protected abstract getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
.end method

.method protected abstract getStatusBarView()Landroid/view/View;
.end method

.method public goToKeyguard()V
    .locals 2

    .prologue
    .line 3706
    const-string v0, "StatusBar"

    const-string v1, "goToKeyguard() called on BaseStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3707
    return-void
.end method

.method protected abstract haltTicker()V
.end method

.method handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 8
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2868
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2870
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    move-object v6, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2875
    :goto_0
    return-void

    .line 2872
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hideRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1802
    const/16 v0, 0x3fc

    .line 1803
    .local v0, "msg":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1804
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1806
    return-void

    :cond_0
    move v3, v2

    .line 1804
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected hideRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1933
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/RecentsComponent;->hideRecents(ZZ)V

    .line 1935
    :cond_0
    return-void
.end method

.method public hideSearchPanel()V
    .locals 2

    .prologue
    .line 1852
    const/16 v0, 0x403

    .line 1853
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1854
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1855
    return-void
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 1

    .prologue
    .line 3631
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method protected inflateViewsForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2110
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-result v0

    return v0
.end method

.method public isBouncerShowing()Z
    .locals 1

    .prologue
    .line 3646
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    return v0
.end method

.method public isCoverViewShowing()Z
    .locals 2

    .prologue
    .line 3736
    const-string v0, "StatusBar"

    const-string v1, "isCoverViewShowing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method public isHeadsUp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isShowing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstantDismiss()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3799
    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-ne v2, v0, :cond_2

    .line 3800
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v2, :cond_1

    .line 3816
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3803
    goto :goto_0

    .line 3805
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 3806
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v2, :cond_0

    move v0, v1

    .line 3809
    goto :goto_0

    .line 3813
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 3816
    goto :goto_0
.end method

.method public isKnoxNotificationSanitizeNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z
    .locals 13
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 612
    iget-object v11, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    .line 613
    .local v8, "userId":I
    const-string v11, "knox-sanitize-data"

    const/4 v12, 0x4

    invoke-direct {p0, v8, v11, v12}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPolicy(ILjava/lang/String;I)Z

    move-result v7

    .line 614
    .local v7, "policy":Z
    iget-object v11, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 615
    .local v4, "packageName":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v12, "persona"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    .line 616
    .local v6, "pms":Landroid/os/PersonaManager;
    const/4 v5, 0x0

    .line 617
    .local v5, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v6, :cond_0

    .line 618
    invoke-virtual {v6, v8}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v5

    .line 621
    :cond_0
    if-eqz p2, :cond_2

    invoke-static {v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v11

    if-nez v11, :cond_2

    .line 650
    :cond_1
    :goto_0
    return v10

    .line 624
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInLockMode(I)Z

    move-result v0

    .line 625
    .local v0, "isContainerLocked":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isForceSanitizationRequired(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    .line 626
    .local v1, "isForceSanitize":Z
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/os/PersonaManager;->getKnoxContainerVersion(Landroid/content/Context;)Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v11

    sget-object v12, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v11, v12}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    move v2, v9

    .line 628
    .local v2, "isKnox2_3_0":Z
    :goto_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/os/PersonaManager;->getKnoxContainerVersion(Landroid/content/Context;)Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v11

    sget-object v12, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v11, v12}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    move v3, v9

    .line 631
    .local v3, "isKnox2_3_1":Z
    :goto_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_a

    .line 633
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v11

    if-nez v11, :cond_7

    :cond_4
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersonaInKioskMode(I)Z

    move-result v11

    if-nez v11, :cond_6

    if-nez v7, :cond_5

    if-nez v1, :cond_7

    :cond_5
    if-eqz v7, :cond_6

    iget v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    if-ne v11, v8, :cond_7

    :cond_6
    if-eqz v5, :cond_1

    iget-boolean v11, v5, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v11, :cond_1

    iget-boolean v11, v5, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-nez v11, :cond_1

    if-eqz v4, :cond_1

    const-string v11, "com.android.email"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    if-eq v11, v8, :cond_1

    :cond_7
    move v10, v9

    .line 638
    goto :goto_0

    .end local v2    # "isKnox2_3_0":Z
    .end local v3    # "isKnox2_3_1":Z
    :cond_8
    move v2, v10

    .line 626
    goto :goto_1

    .restart local v2    # "isKnox2_3_0":Z
    :cond_9
    move v3, v10

    .line 628
    goto :goto_2

    .line 642
    .restart local v3    # "isKnox2_3_1":Z
    :cond_a
    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v11

    if-nez v11, :cond_e

    :cond_b
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersonaInKioskMode(I)Z

    move-result v11

    if-nez v11, :cond_d

    if-eqz v0, :cond_c

    if-nez v1, :cond_e

    :cond_c
    if-eqz v7, :cond_d

    if-nez v0, :cond_e

    :cond_d
    if-eqz v5, :cond_1

    iget-boolean v11, v5, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v11, :cond_1

    iget-boolean v11, v5, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-nez v11, :cond_1

    if-eqz v4, :cond_1

    const-string v11, "com.android.email"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v0, :cond_1

    :cond_e
    move v10, v9

    .line 647
    goto/16 :goto_0
.end method

.method public isLockscreenKnoxMode()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenKnoxMode:Z

    return v0
.end method

.method public isLockscreenPublicMode()Z
    .locals 1

    .prologue
    .line 1989
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    return v0
.end method

.method protected isMSim()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1367
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 1571
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    const v1, 0x10203f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNavigationBarHidden()Z
    .locals 1

    .prologue
    .line 3723
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isNavigationBarHidden()Z

    move-result v0

    return v0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1425
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 1426
    .local v1, "thisUserId":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 1427
    .local v0, "notificationUserId":I
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1431
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1432
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    monitor-exit v3

    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1434
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected isStatusBarHidden()Z
    .locals 1

    .prologue
    .line 3719
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isStatusBarHidden()Z

    move-result v0

    return v0
.end method

.method protected isSystemBarHidden()Z
    .locals 1

    .prologue
    .line 3715
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isSystemBarHidden()Z

    move-result v0

    return v0
.end method

.method public logNotificationExpansion(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .prologue
    .line 3699
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3703
    :goto_0
    return-void

    .line 3700
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "notificationKey"    # Ljava/lang/String;
    .param p3, "forHun"    # Z

    .prologue
    .line 2732
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected notifyHeadsUpScreenOn(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 3582
    if-nez p1, :cond_0

    .line 3583
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->scheduleHeadsUpEscalation()V

    .line 3585
    :cond_0
    return-void
.end method

.method protected notifyUserAboutHiddenNotifications()V
    .locals 14

    .prologue
    const/high16 v13, 0x10000000

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1289
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "show_note_about_notification_hiding"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    .line 1291
    const-string v8, "StatusBar"

    const-string v9, "user hasn\'t seen notification about hidden notifications"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1293
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1294
    const-string v8, "StatusBar"

    const-string v9, "insecure lockscreen, skipping notification"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "show_note_about_notification_hiding"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1335
    .end local v2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :goto_0
    return-void

    .line 1299
    .restart local v2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    const-string v8, "StatusBar"

    const-string v9, "disabling lockecreen notifications and alerting the user"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_show_notifications"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1303
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_allow_private_notifications"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1306
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1307
    .local v5, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v8, v11, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1310
    .local v0, "cancelIntent":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.systemui.statusbar.banner_action_setup"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v8, v11, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1314
    .local v7, "setupIntent":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1315
    .local v6, "res":Landroid/content/res/Resources;
    const v1, 0x1060058

    .line 1316
    .local v1, "colorRes":I
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0200d5

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0323

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0324

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x1060058

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f0200dd

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0325

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f020166

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0326

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1331
    .local v4, "note":Landroid/app/Notification$Builder;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1333
    .local v3, "noMan":Landroid/app/NotificationManager;
    const/16 v8, 0x2710

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1453
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1454
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    .line 1455
    .local v1, "ld":I
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1457
    .local v0, "fontScale":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    .line 1458
    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1459
    const-string v3, "StatusBar"

    const-string v4, "config changed locale/LD: %s (%d) -> %s (%d)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v6, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_1
    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 1464
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 1465
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->refreshLayout(I)V

    .line 1467
    :cond_2
    return-void
.end method

.method public onCoverAppCovered(Z)I
    .locals 2
    .param p1, "covered"    # Z

    .prologue
    .line 3742
    const-string v0, "StatusBar"

    const-string v1, "onCoverAppCovered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3743
    const/4 v0, 0x0

    return v0
.end method

.method public onHeadsUpDismissed()V
    .locals 0

    .prologue
    .line 1791
    return-void
.end method

.method public onNotificationClear(Landroid/service/notification/StatusBarNotification;)V
    .locals 5
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2036
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2044
    :goto_0
    return-void

    .line 2041
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1971
    return-void
.end method

.method public overrideActivityPendingAppTransition(Z)V
    .locals 6
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 2824
    if-eqz p1, :cond_0

    .line 2826
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/IWindowManager;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2831
    :cond_0
    :goto_0
    return-void

    .line 2827
    :catch_0
    move-exception v0

    .line 2828
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error overriding app transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 1817
    const/16 v0, 0x3fe

    .line 1818
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1819
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1820
    return-void
.end method

.method protected preloadRecents()V
    .locals 1

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1946
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->preloadRecents()V

    .line 1948
    :cond_0
    return-void
.end method

.method protected abstract refreshLayout(I)V
.end method

.method public abstract removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2878
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 2879
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 2880
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotification for unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    const/4 v1, 0x0

    .line 2884
    :goto_0
    return-object v1

    .line 2883
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 2884
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    goto :goto_0
.end method

.method public abstract resetHeadsUpDecayTimer()V
.end method

.method public sanitizePendingIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Landroid/app/PendingIntent;
    .locals 16
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "userId"    # I

    .prologue
    .line 690
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    .line 691
    const-string v1, "KnoxNotification"

    const-string v2, "----- Inside sanitizePendingIntent -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v13, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 693
    .local v13, "pi":Landroid/app/PendingIntent;
    move-object v15, v13

    .line 694
    .local v15, "sanitized":Landroid/app/PendingIntent;
    const/4 v12, 0x0

    .line 695
    .local v12, "isSanitizeRequired":Z
    if-nez v13, :cond_5

    .line 696
    const/4 v12, 0x1

    .line 706
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_2

    .line 707
    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----- sanitizePendingIntent : isSanitizeRequired - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_2
    if-eqz v12, :cond_3

    .line 709
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v10

    .line 711
    .local v10, "creatorPkg":Ljava/lang/String;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 712
    .local v3, "in":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    .line 717
    .local v14, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_9

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 718
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v10, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v15

    .line 729
    :goto_2
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    .line 731
    .end local v3    # "in":Landroid/content/Intent;
    .end local v10    # "creatorPkg":Ljava/lang/String;
    .end local v14    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_4

    .line 732
    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----- sanitizePendingIntent : sanitized - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_4
    return-object v15

    .line 698
    :cond_5
    invoke-virtual {v13}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 699
    .local v11, "innerIntent":Landroid/content/Intent;
    if-eqz v11, :cond_6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v11, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    :cond_6
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_7

    .line 701
    const-string v1, "KnoxNotification"

    const-string v2, "----- sanitizePendingIntent : innerIntent null or filterEquals -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_7
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 709
    .end local v11    # "innerIntent":Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 722
    .restart local v3    # "in":Landroid/content/Intent;
    .restart local v10    # "creatorPkg":Ljava/lang/String;
    .restart local v14    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_9
    new-instance v6, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 723
    .local v6, "home":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    const/high16 v1, 0x10000000

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x8000000

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v15

    goto :goto_2
.end method

.method public abstract scheduleHeadsUpClose()V
.end method

.method public abstract scheduleHeadsUpEscalation()V
.end method

.method public abstract scheduleHeadsUpOpen()V
.end method

.method protected abstract setAreThereNotifications()V
.end method

.method public setBouncerShowing(Z)V
    .locals 0
    .param p1, "bouncerShowing"    # Z

    .prologue
    .line 3639
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    .line 3640
    return-void
.end method

.method public setInteracting(IZ)V
    .locals 0
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    .line 3636
    return-void
.end method

.method public setLockscreenKnoxMode(Z)V
    .locals 0
    .param p1, "knoxMode"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenKnoxMode:Z

    .line 351
    return-void
.end method

.method public setLockscreenPublicMode(Z)V
    .locals 0
    .param p1, "publicMode"    # Z

    .prologue
    .line 1985
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 1986
    return-void
.end method

.method protected setShowLockscreenNotifications(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 3134
    const-string v1, "StatusBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLN:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "S"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    .line 3137
    return-void

    .line 3134
    :cond_0
    const-string v0, "H"

    goto :goto_0
.end method

.method protected setZenMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 3126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3129
    :goto_0
    return-void

    .line 3127
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mZenMode:I

    .line 3128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0
.end method

.method protected abstract shouldDisableNavbarGestures()Z
.end method

.method public shouldHideSensitiveContents(I)Z
    .locals 1
    .param p1, "userid"    # I

    .prologue
    .line 2031
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z
    .locals 14
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3593
    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v12, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3594
    sget-boolean v11, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 3595
    const-string v11, "StatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping HUN check for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " since it\'s filtered out."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3627
    :cond_0
    :goto_0
    return v10

    .line 3600
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 3602
    .local v9, "notification":Landroid/app/Notification;
    iget v12, v9, Landroid/app/Notification;->defaults:I

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_2

    iget v12, v9, Landroid/app/Notification;->defaults:I

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_2

    iget-object v12, v9, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v12, :cond_2

    iget-object v12, v9, Landroid/app/Notification;->vibrate:[J

    if-eqz v12, :cond_5

    :cond_2
    move v7, v11

    .line 3606
    .local v7, "isNoisy":Z
    :goto_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v12

    const/16 v13, 0xa

    if-lt v12, v13, :cond_6

    move v6, v11

    .line 3607
    .local v6, "isHighPriority":Z
    :goto_2
    iget-object v12, v9, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v12, :cond_7

    move v5, v11

    .line 3608
    .local v5, "isFullscreen":Z
    :goto_3
    iget-boolean v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    if-eqz v12, :cond_8

    iget-object v12, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    move v2, v11

    .line 3609
    .local v2, "hasTicker":Z
    :goto_4
    iget-object v12, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "headsup"

    invoke-virtual {v12, v13, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_9

    move v4, v11

    .line 3611
    .local v4, "isAllowed":Z
    :goto_5
    if-eqz v5, :cond_a

    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v12

    if-eqz v12, :cond_a

    move v0, v11

    .line 3614
    .local v0, "accessibilityForcesLaunch":Z
    :goto_6
    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    move-result-object v8

    .line 3615
    .local v8, "keyguard":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    if-nez v5, :cond_3

    if-eqz v6, :cond_b

    if-nez v7, :cond_3

    if-eqz v2, :cond_b

    :cond_3
    if-eqz v4, :cond_b

    if-nez v0, :cond_b

    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v12}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->isShowingAndNotOccluded()Z

    move-result v12

    if-nez v12, :cond_b

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->isInputRestricted()Z

    move-result v12

    if-nez v12, :cond_b

    move v3, v11

    .line 3622
    .local v3, "interrupt":Z
    :goto_7
    if-eqz v3, :cond_c

    :try_start_0
    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v12}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-nez v12, :cond_c

    move v3, v11

    .line 3626
    :goto_8
    sget-boolean v10, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v10, "StatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "interrupt: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v10, v3

    .line 3627
    goto/16 :goto_0

    .end local v0    # "accessibilityForcesLaunch":Z
    .end local v2    # "hasTicker":Z
    .end local v3    # "interrupt":Z
    .end local v4    # "isAllowed":Z
    .end local v5    # "isFullscreen":Z
    .end local v6    # "isHighPriority":Z
    .end local v7    # "isNoisy":Z
    .end local v8    # "keyguard":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    :cond_5
    move v7, v10

    .line 3602
    goto/16 :goto_1

    .restart local v7    # "isNoisy":Z
    :cond_6
    move v6, v10

    .line 3606
    goto :goto_2

    .restart local v6    # "isHighPriority":Z
    :cond_7
    move v5, v10

    .line 3607
    goto :goto_3

    .restart local v5    # "isFullscreen":Z
    :cond_8
    move v2, v10

    .line 3608
    goto :goto_4

    .restart local v2    # "hasTicker":Z
    :cond_9
    move v4, v10

    .line 3609
    goto :goto_5

    .restart local v4    # "isAllowed":Z
    :cond_a
    move v0, v10

    .line 3611
    goto :goto_6

    .restart local v0    # "accessibilityForcesLaunch":Z
    .restart local v8    # "keyguard":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    :cond_b
    move v3, v10

    .line 3615
    goto :goto_7

    .restart local v3    # "interrupt":Z
    :cond_c
    move v3, v10

    .line 3622
    goto :goto_8

    .line 3623
    :catch_0
    move-exception v1

    .line 3624
    .local v1, "e":Landroid/os/RemoteException;
    const-string v10, "StatusBar"

    const-string v11, "failed to query dream manager"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public showNextAffiliatedTask()V
    .locals 2

    .prologue
    .line 1831
    const/16 v0, 0x400

    .line 1832
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1833
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1834
    return-void
.end method

.method public showPreviousAffiliatedTask()V
    .locals 2

    .prologue
    .line 1838
    const/16 v0, 0x401

    .line 1839
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1840
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1841
    return-void
.end method

.method public showRecentApps(Z)V
    .locals 4
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1795
    const/16 v0, 0x3fb

    .line 1796
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1797
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1798
    return-void

    :cond_0
    move v1, v2

    .line 1797
    goto :goto_0
.end method

.method protected showRecents(Z)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1926
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "recentapps"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 1927
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/RecentsComponent;->showRecents(ZLandroid/view/View;)V

    .line 1929
    :cond_0
    return-void
.end method

.method protected showRecentsNextAffiliatedTask()V
    .locals 1

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showNextAffiliatedTask()V

    .line 1960
    :cond_0
    return-void
.end method

.method protected showRecentsPreviousAffiliatedTask()V
    .locals 1

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1964
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showPrevAffiliatedTask()V

    .line 1966
    :cond_0
    return-void
.end method

.method public showSearchPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1845
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/SearchPanelView;->isAssistantAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    .line 1848
    :cond_0
    return-void
.end method

.method public start()V
    .locals 26

    .prologue
    .line 1099
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isStatusBarHidden()Z

    move-result v21

    sput-boolean v21, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    .line 1100
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isNavigationBarHidden()Z

    move-result v21

    sput-boolean v21, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNavigationBarHidden:Z

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 1104
    .local v18, "pm":Landroid/content/pm/PackageManager;
    if-eqz v18, :cond_3

    .line 1105
    const-string v21, "com.sec.feature.findo"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v21, 0x1

    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowSFinderQConnectView:Z

    .line 1108
    :try_start_0
    const-string v21, "com.android.settings"

    const/16 v22, 0x80

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .line 1110
    .local v15, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v15, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v16, v0

    .line 1111
    .local v16, "meta_data":Landroid/os/Bundle;
    const-string v21, "StatusBar"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Metadata value : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "settings_apk_name"

    const-string v24, "none"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const-string v21, "settings_apk_name"

    const-string v22, "none"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "SecSettings2"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1113
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    .end local v15    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "meta_data":Landroid/os/Bundle;
    :cond_0
    :goto_1
    new-instance v21, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "window"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/WindowManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 1125
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "device_policy"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 1132
    new-instance v21, Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;-><init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "accessibility"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1137
    const-string v21, "dreams"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "power"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/PowerManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "device_provisioned"

    invoke-static/range {v22 .. v22}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "zen_mode"

    invoke-static/range {v22 .. v22}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "lock_screen_show_notifications"

    invoke-static/range {v22 .. v22}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    invoke-virtual/range {v21 .. v25}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "kids_home_mode"

    invoke-static/range {v22 .. v22}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    invoke-virtual/range {v21 .. v25}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "lock_screen_allow_private_notifications"

    invoke-static/range {v22 .. v22}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    invoke-virtual/range {v21 .. v25}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1166
    const-string v21, "statusbar"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1169
    const-class v21, Lcom/android/systemui/RecentsComponent;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/RecentsComponent;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/systemui/RecentsComponent;->setCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 1173
    .local v9, "currentConfig":Landroid/content/res/Configuration;
    iget-object v0, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 1175
    iget v0, v9, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "user"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/UserManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x10c000e

    invoke-static/range {v21 .. v22}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x10c000f

    invoke-static/range {v21 .. v22}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    .line 1185
    new-instance v14, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v14}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 1186
    .local v14, "iconList":Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v21, Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1188
    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 1189
    .local v19, "switches":[I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    .local v7, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v14, v2, v7}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1196
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createAndAddWindows()V

    .line 1198
    const/16 v21, 0x0

    aget v21, v19, v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->disable(IZ)V

    .line 1199
    const/16 v21, 0x1

    aget v21, v19, v21

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->setSystemUiVisibility(II)V

    .line 1200
    const/16 v21, 0x2

    aget v21, v19, v21

    if-eqz v21, :cond_4

    const/16 v21, 0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->topAppWindowChanged(Z)V

    .line 1202
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/IBinder;

    const/16 v22, 0x3

    aget v23, v19, v22

    const/16 v22, 0x4

    aget v24, v19, v22

    const/16 v22, 0x5

    aget v22, v19, v22

    if-eqz v22, :cond_5

    const/16 v22, 0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 1205
    invoke-virtual {v14}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v5

    .line 1206
    .local v5, "N":I
    const/16 v20, 0x0

    .line 1207
    .local v20, "viewIndex":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    if-ge v12, v5, :cond_6

    .line 1208
    invoke-virtual {v14, v12}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v13

    .line 1209
    .local v13, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v13, :cond_1

    .line 1210
    invoke-virtual {v14, v12}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v12, v2, v13}, Lcom/android/systemui/statusbar/BaseStatusBar;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 1211
    add-int/lit8 v20, v20, 0x1

    .line 1207
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1105
    .end local v5    # "N":I
    .end local v7    # "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v9    # "currentConfig":Landroid/content/res/Configuration;
    .end local v12    # "i":I
    .end local v13    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v14    # "iconList":Lcom/android/internal/statusbar/StatusBarIconList;
    .end local v19    # "switches":[I
    .end local v20    # "viewIndex":I
    :cond_2
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 1115
    :catch_0
    move-exception v10

    .line 1116
    .local v10, "e":Ljava/lang/Exception;
    const-string v21, "StatusBar"

    const-string v22, "Cannot get Metadata value"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1119
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowSFinderQConnectView:Z

    goto/16 :goto_1

    .line 1200
    .restart local v7    # "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v9    # "currentConfig":Landroid/content/res/Configuration;
    .restart local v14    # "iconList":Lcom/android/internal/statusbar/StatusBarIconList;
    .restart local v19    # "switches":[I
    :cond_4
    const/16 v21, 0x0

    goto :goto_3

    .line 1202
    :cond_5
    const/16 v22, 0x0

    goto :goto_4

    .line 1217
    .restart local v5    # "N":I
    .restart local v12    # "i":I
    .restart local v20    # "viewIndex":I
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v23 .. v25}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v24, -0x1

    invoke-virtual/range {v21 .. v24}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1224
    :goto_6
    sget-boolean v21, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v21, :cond_7

    .line 1225
    const-string v21, "StatusBar"

    const-string v22, "init: icons=%d disabled=0x%08x lights=0x%08x menu=0x%08x imeButton=0x%08x"

    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v14}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0x0

    aget v25, v19, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const/16 v25, 0x1

    aget v25, v19, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    const/16 v25, 0x2

    aget v25, v19, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x4

    const/16 v25, 0x3

    aget v25, v19, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_7
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 1237
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 1238
    .local v11, "filter":Landroid/content/IntentFilter;
    const-string v21, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1239
    const-string v21, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1240
    const-string v21, "com.sec.knox.container.action.launchinfo"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1241
    const-string v21, "com.android.systemui.statusbar.banner_action_cancel"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1242
    const-string v21, "com.android.systemui.statusbar.banner_action_setup"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1243
    const-string v21, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1244
    const-string v21, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1248
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1249
    .local v6, "RcpFilter":Landroid/content/IntentFilter;
    const-string v21, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1253
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v21, v0

    if-nez v21, :cond_8

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "persona"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/PersonaManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 1256
    :cond_8
    const/16 v17, 0x0

    .line 1257
    .local v17, "personaIds":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v17

    .line 1260
    :cond_9
    if-eqz v17, :cond_d

    .line 1261
    const/4 v12, 0x0

    :goto_7
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_d

    .line 1262
    aget v21, v17, v12

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v21, v0

    aget v22, v17, v12

    invoke-virtual/range {v21 .. v22}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;

    move-result-object v8

    .line 1266
    .local v8, "currState":Landroid/content/pm/PersonaState;
    sget-object v21, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v21

    if-eq v8, v0, :cond_a

    sget-object v21, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v21

    if-eq v8, v0, :cond_a

    sget-object v21, Landroid/content/pm/PersonaState;->ADMIN_LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v21

    if-ne v8, v0, :cond_b

    .line 1269
    :cond_a
    sget-object v21, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    aget v22, v17, v12

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1271
    :cond_b
    aget v21, v17, v12

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->registerPersonaObserver(I)V

    .line 1272
    sget-boolean v21, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v21, :cond_c

    .line 1273
    const-string v21, "KnoxNotification"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "add container observer="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " for userId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v17, v12

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " No. of users="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1261
    .end local v8    # "currState":Landroid/content/pm/PersonaState;
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 1220
    .end local v6    # "RcpFilter":Landroid/content/IntentFilter;
    .end local v11    # "filter":Landroid/content/IntentFilter;
    .end local v17    # "personaIds":[I
    :catch_1
    move-exception v10

    .line 1221
    .local v10, "e":Landroid/os/RemoteException;
    const-string v21, "StatusBar"

    const-string v22, "Unable to register notification listener"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 1278
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v6    # "RcpFilter":Landroid/content/IntentFilter;
    .restart local v11    # "filter":Landroid/content/IntentFilter;
    :catch_2
    move-exception v10

    .line 1279
    .local v10, "e":Ljava/lang/Exception;
    const-string v21, "KnoxNotification"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "start: threw an exception: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1284
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    .line 1286
    return-void

    .line 1192
    .end local v5    # "N":I
    .end local v6    # "RcpFilter":Landroid/content/IntentFilter;
    .end local v11    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "i":I
    .end local v20    # "viewIndex":I
    :catch_3
    move-exception v21

    goto/16 :goto_2
.end method

.method protected abstract tick(Landroid/service/notification/StatusBarNotification;Z)V
.end method

.method public toggleNotificationPanel()V
    .locals 0

    .prologue
    .line 3796
    return-void
.end method

.method public toggleRecentApps()V
    .locals 2

    .prologue
    .line 1810
    const/16 v0, 0x3fd

    .line 1811
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1812
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1813
    return-void
.end method

.method protected toggleRecents()V
    .locals 4

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1939
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "recentapps"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 1940
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/RecentsComponent;->toggleRecents(Landroid/view/Display;ILandroid/view/View;)V

    .line 1942
    :cond_0
    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 3731
    const-string v0, "StatusBar"

    const-string v1, "updateCoverState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    return-void
.end method

.method protected abstract updateExpandedViewPos(I)V
.end method

.method protected updateLegacyBackgroundForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3547
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3548
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    const v1, 0x10203f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3550
    iget v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 3552
    iget v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 3553
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 3554
    iput-boolean v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    .line 3562
    :cond_0
    :goto_0
    return-void

    .line 3556
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 3557
    iput-boolean v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    goto :goto_0
.end method

.method protected updateLockscreenNotificationSetting()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3150
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_show_notifications"

    iget v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 3154
    .local v5, "value":I
    if-eqz v5, :cond_0

    move v4, v6

    .line 3155
    .local v4, "show":Z
    :goto_0
    const-string v8, "StatusBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LSSN:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v8, v9, v10}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 3159
    .local v1, "dpmFlags":I
    and-int/lit8 v8, v1, 0x4

    if-nez v8, :cond_1

    move v0, v6

    .line 3162
    .local v0, "allowedByDpm":Z
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "kids_home_mode"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_2

    move v3, v6

    .line 3163
    .local v3, "kidsModeEnabled":Z
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsFullscreenBouncer()Z

    move-result v8

    if-eqz v8, :cond_3

    move v2, v6

    .line 3165
    .local v2, "fullBouncer":Z
    :goto_3
    const-string v8, "StatusBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fullBouncer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    if-nez v3, :cond_4

    if-nez v2, :cond_4

    :goto_4
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->setShowLockscreenNotifications(Z)V

    .line 3168
    return-void

    .end local v0    # "allowedByDpm":Z
    .end local v1    # "dpmFlags":I
    .end local v2    # "fullBouncer":Z
    .end local v3    # "kidsModeEnabled":Z
    .end local v4    # "show":Z
    :cond_0
    move v4, v7

    .line 3154
    goto :goto_0

    .restart local v1    # "dpmFlags":I
    .restart local v4    # "show":Z
    :cond_1
    move v0, v7

    .line 3159
    goto :goto_1

    .restart local v0    # "allowedByDpm":Z
    :cond_2
    move v3, v7

    .line 3162
    goto :goto_2

    .restart local v3    # "kidsModeEnabled":Z
    :cond_3
    move v2, v7

    .line 3163
    goto :goto_3

    .restart local v2    # "fullBouncer":Z
    :cond_4
    move v6, v7

    .line 3166
    goto :goto_4
.end method

.method protected updateMediaNotificationsForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 3565
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3566
    iget v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 3567
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(I)V

    .line 3577
    :cond_0
    :goto_0
    return-void

    .line 3570
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v0, v1, Landroid/app/Notification;->color:I

    .line 3571
    .local v0, "color":I
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .end local v0    # "color":I
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(I)V

    goto :goto_0
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 39
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 3183
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNotification("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3185
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v21

    .line 3186
    .local v21, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isHeadsUp(Ljava/lang/String;)Z

    move-result v38

    .line 3188
    .local v38, "wasHeadsUp":Z
    if-eqz v38, :cond_1

    .line 3189
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v26

    .line 3193
    .local v26, "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_0
    if-nez v26, :cond_2

    .line 3395
    :goto_1
    return-void

    .line 3191
    .end local v26    # "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v26

    .restart local v26    # "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    goto :goto_0

    .line 3197
    :cond_2
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    .line 3200
    .local v28, "oldNotification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v25, v0

    .line 3201
    .local v25, "oldContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v22

    .line 3202
    .local v22, "n":Landroid/app/Notification;
    move-object/from16 v0, v22

    iget-object v14, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3203
    .local v14, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v24, v0

    .line 3204
    .local v24, "oldBigContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, v22

    iget-object v12, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3205
    .local v12, "bigContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v27, v0

    .line 3206
    .local v27, "oldHeadsUpContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    .line 3207
    .local v17, "headsUpContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v30, v0

    .line 3208
    .local v30, "oldPublicNotification":Landroid/app/Notification;
    if-eqz v30, :cond_18

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v29, v0

    .line 3210
    .local v29, "oldPublicContentView":Landroid/widget/RemoteViews;
    :goto_2
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v32, v0

    .line 3211
    .local v32, "publicNotification":Landroid/app/Notification;
    if-eqz v32, :cond_19

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v31, v0

    .line 3214
    .local v31, "publicContentView":Landroid/widget/RemoteViews;
    :goto_3
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 3215
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "old notification: when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ongoing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expanded="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " contentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bigContentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " publicView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rowParent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new notification: when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget-wide v8, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ongoing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " contentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bigContentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " publicView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    :cond_3
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v37

    .line 3233
    .local v37, "userId":I
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v5, :cond_1a

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1a

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1a

    invoke-static/range {v37 .. v37}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    :cond_4
    invoke-static/range {v37 .. v37}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    const v6, 0x7f040040

    if-eq v5, v6, :cond_6

    :cond_5
    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_1a

    :cond_6
    const/4 v15, 0x1

    .line 3239
    .local v15, "contentsUnchanged":Z
    :goto_4
    if-nez v24, :cond_7

    if-eqz v12, :cond_a

    :cond_7
    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1b

    if-eqz v12, :cond_1b

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-static/range {v37 .. v37}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_8
    invoke-static/range {v37 .. v37}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    const v6, 0x7f040040

    if-eq v5, v6, :cond_a

    :cond_9
    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_1b

    :cond_a
    const/4 v13, 0x1

    .line 3246
    .local v13, "bigContentsUnchanged":Z
    :goto_5
    if-nez v27, :cond_b

    if-eqz v17, :cond_d

    :cond_b
    if-eqz v27, :cond_1c

    if-eqz v17, :cond_1c

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static/range {v37 .. v37}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    const v6, 0x7f040040

    if-eq v5, v6, :cond_d

    :cond_c
    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_1c

    :cond_d
    const/16 v18, 0x1

    .line 3253
    .local v18, "headsUpContentsUnchanged":Z
    :goto_6
    if-nez v29, :cond_e

    if-eqz v31, :cond_f

    :cond_e
    if-eqz v29, :cond_1d

    if-eqz v31, :cond_1d

    invoke-virtual/range {v31 .. v31}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual/range {v29 .. v29}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual/range {v29 .. v29}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual/range {v29 .. v29}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual/range {v31 .. v31}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_1d

    :cond_f
    const/16 v33, 0x1

    .line 3260
    .local v33, "publicUnchanged":Z
    :goto_7
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1e

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    const/16 v36, 0x1

    .line 3264
    .local v36, "updateTicker":Z
    :goto_8
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----- contentsUnchanged : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bigContentsUnchanged - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", headsUpContentsUnchanged - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , publicUnchanged "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z

    move-result v34

    .line 3266
    .local v34, "shouldInterrupt":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z

    move-result v11

    .line 3269
    .local v11, "alertAgain":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isHeadsUp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 3270
    const/16 v18, 0x1

    .line 3272
    :cond_10
    const/16 v35, 0x0

    .line 3273
    .local v35, "updateSuccessful":Z
    if-eqz v15, :cond_12

    if-eqz v13, :cond_12

    if-eqz v18, :cond_12

    if-eqz v33, :cond_12

    .line 3275
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_11

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reusing notification for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    :cond_11
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3278
    :try_start_0
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v5, :cond_1f

    .line 3280
    new-instance v4, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, v22

    iget v7, v0, Landroid/app/Notification;->icon:I

    move-object/from16 v0, v22

    iget v8, v0, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, v22

    iget v9, v0, Landroid/app/Notification;->number:I

    move-object/from16 v0, v22

    iget-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 3286
    .local v4, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 3287
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 3288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t update icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 3317
    .end local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :catch_0
    move-exception v16

    .line 3319
    .local v16, "e":Ljava/lang/RuntimeException;
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t reapply views for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3322
    .end local v16    # "e":Ljava/lang/RuntimeException;
    :cond_12
    :goto_9
    if-nez v35, :cond_15

    .line 3323
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_13

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not reusing notification for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    :cond_13
    if-eqz v38, :cond_27

    .line 3325
    if-eqz v34, :cond_25

    .line 3326
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_14

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rebuilding heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    :cond_14
    new-instance v23, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 3328
    .local v23, "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getHolder()Landroid/view/ViewGroup;

    move-result-object v19

    .line 3329
    .local v19, "holder":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViewsForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 3330
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    .line 3331
    if-eqz v11, :cond_15

    .line 3332
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->resetHeadsUpDecayTimer()V

    .line 3372
    .end local v19    # "holder":Landroid/view/ViewGroup;
    .end local v23    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_15
    :goto_a
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    .line 3375
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v20

    .line 3376
    .local v20, "isForCurrentUser":Z
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_16

    const-string v6, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notification is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v20, :cond_2b

    const-string v5, ""

    :goto_b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "for you"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    :cond_16
    if-eqz v36, :cond_17

    if-eqz v20, :cond_17

    .line 3383
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->tick(Landroid/service/notification/StatusBarNotification;Z)V

    .line 3387
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setAreThereNotifications()V

    .line 3388
    const/16 v5, -0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpandedViewPos(I)V

    .line 3393
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClearable(Z)V

    goto/16 :goto_1

    .line 3208
    .end local v11    # "alertAgain":Z
    .end local v13    # "bigContentsUnchanged":Z
    .end local v15    # "contentsUnchanged":Z
    .end local v18    # "headsUpContentsUnchanged":Z
    .end local v20    # "isForCurrentUser":Z
    .end local v29    # "oldPublicContentView":Landroid/widget/RemoteViews;
    .end local v31    # "publicContentView":Landroid/widget/RemoteViews;
    .end local v32    # "publicNotification":Landroid/app/Notification;
    .end local v33    # "publicUnchanged":Z
    .end local v34    # "shouldInterrupt":Z
    .end local v35    # "updateSuccessful":Z
    .end local v36    # "updateTicker":Z
    .end local v37    # "userId":I
    :cond_18
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 3211
    .restart local v29    # "oldPublicContentView":Landroid/widget/RemoteViews;
    .restart local v32    # "publicNotification":Landroid/app/Notification;
    :cond_19
    const/16 v31, 0x0

    goto/16 :goto_3

    .line 3233
    .restart local v31    # "publicContentView":Landroid/widget/RemoteViews;
    .restart local v37    # "userId":I
    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 3239
    .restart local v15    # "contentsUnchanged":Z
    :cond_1b
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 3246
    .restart local v13    # "bigContentsUnchanged":Z
    :cond_1c
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 3253
    .restart local v18    # "headsUpContentsUnchanged":Z
    :cond_1d
    const/16 v33, 0x0

    goto/16 :goto_7

    .line 3260
    .restart local v33    # "publicUnchanged":Z
    :cond_1e
    const/16 v36, 0x0

    goto/16 :goto_8

    .line 3293
    .restart local v11    # "alertAgain":Z
    .restart local v34    # "shouldInterrupt":Z
    .restart local v35    # "updateSuccessful":Z
    .restart local v36    # "updateTicker":Z
    :cond_1f
    if-eqz v38, :cond_22

    .line 3294
    if-eqz v34, :cond_21

    .line 3295
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateHeadsUpViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 3296
    if-eqz v11, :cond_20

    .line 3297
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->resetHeadsUpDecayTimer()V

    .line 3313
    :cond_20
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 3314
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 3315
    const/16 v35, 0x1

    goto/16 :goto_9

    .line 3301
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    goto/16 :goto_1

    .line 3305
    :cond_22
    if-eqz v34, :cond_23

    if-eqz v11, :cond_23

    .line 3306
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    .line 3307
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_c

    .line 3309
    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->reSanitizePendingIntentIfNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 3310
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    .line 3335
    .restart local v19    # "holder":Landroid/view/ViewGroup;
    .restart local v23    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_24
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t create new updated headsup for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 3339
    .end local v19    # "holder":Landroid/view/ViewGroup;
    .end local v23    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_25
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_26

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releasing heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3340
    :cond_26
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3341
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    goto/16 :goto_1

    .line 3345
    :cond_27
    if-eqz v34, :cond_29

    if-eqz v11, :cond_29

    .line 3346
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_28

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reposting to invoke heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    .line 3348
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto/16 :goto_a

    .line 3350
    :cond_29
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_2a

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rebuilding update in place for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    :cond_2a
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3353
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->reSanitizePendingIntentIfNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 3355
    new-instance v4, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, v22

    iget v7, v0, Landroid/app/Notification;->icon:I

    move-object/from16 v0, v22

    iget v8, v0, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, v22

    iget v9, v0, Landroid/app/Notification;->number:I

    move-object/from16 v0, v22

    iget-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 3361
    .restart local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 3362
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 3363
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v38

    invoke-direct {v0, v1, v5, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    .line 3364
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 3365
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto/16 :goto_a

    .line 3376
    .end local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .restart local v20    # "isForCurrentUser":Z
    :cond_2b
    const-string v5, "not "

    goto/16 :goto_b
.end method

.method protected abstract updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .locals 7
    .param p1, "row"    # Landroid/view/View;
    .param p2, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1470
    const v0, 0x7f0e0377

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1471
    .local v6, "vetoButton":Landroid/view/View;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_1

    .line 1473
    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1474
    .local v2, "_pkg":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 1475
    .local v3, "_tag":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    .line 1476
    .local v4, "_id":I
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    .line 1484
    .local v5, "_userId":I
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar$7;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1518
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1522
    .end local v2    # "_pkg":Ljava/lang/String;
    .end local v3    # "_tag":Ljava/lang/String;
    .end local v4    # "_id":I
    .end local v5    # "_userId":I
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1523
    return-object v6

    .line 1520
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected abstract updateNotifications()V
.end method

.method protected updateRowStates()V
    .locals 31

    .prologue
    .line 2942
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxKeyguardNotifications()I

    move-result v10

    .line 2943
    .local v10, "maxKeyguardNotifications":I
    const/4 v6, 0x0

    .line 2944
    .local v6, "hasEventNotification":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->removeAllViews()V

    .line 2947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    .line 2948
    .local v3, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2949
    .local v16, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2950
    .local v17, "toShowMiniCon":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2951
    .local v18, "toShowMiniConCMAS":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2952
    .local v19, "toShowMiniConContextAware":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2953
    .local v20, "toShowMiniConKnoxMode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2954
    .local v21, "toShowMiniConToolbox":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2955
    .local v22, "toShowNotification":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 2956
    .local v23, "toShowOnGoing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2958
    .local v2, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_8

    .line 2959
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2961
    .local v5, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/app/Notification;->commonValue:I

    move/from16 v28, v0

    const v29, -0x7f7f7f80

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 2962
    const-string v28, "StatusBar"

    const-string v29, "Icon Only"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2966
    :cond_1
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->isMiniCon()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 2967
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v28, v0

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 2968
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2985
    :goto_2
    sget-boolean v28, Lcom/android/systemui/statusbar/Feature;->mUseEventNotification:Z

    if-eqz v28, :cond_0

    const-string v28, "com.sec.android.app.eventnotification"

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 2986
    const/4 v6, 0x1

    goto :goto_1

    .line 2969
    :cond_2
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v28, v0

    const/16 v29, 0x80

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 2970
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2971
    :cond_3
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v28, v0

    const/16 v29, 0x104

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 2972
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2973
    :cond_4
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v28, v0

    const/16 v29, 0x200

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 2974
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2976
    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2979
    :cond_6
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 2980
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2982
    :cond_7
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2989
    .end local v5    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_8
    const/4 v8, 0x0

    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_9

    .line 2990
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2989
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2992
    :cond_9
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v8, v28, -0x1

    :goto_4
    if-ltz v8, :cond_a

    .line 2993
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2992
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 2995
    :cond_a
    const/4 v8, 0x0

    :goto_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_b

    .line 2996
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2995
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 2998
    :cond_b
    const/4 v8, 0x0

    :goto_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_c

    .line 2999
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2998
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 3001
    :cond_c
    const/4 v8, 0x0

    :goto_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_d

    .line 3002
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3001
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 3004
    :cond_d
    const/4 v8, 0x0

    :goto_8
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_e

    .line 3005
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3004
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 3007
    :cond_e
    const/4 v8, 0x0

    :goto_9
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_f

    .line 3008
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3007
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 3012
    :cond_f
    const/16 v26, 0x0

    .line 3013
    .local v26, "visibleNotifications":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1a

    const/4 v11, 0x1

    .line 3014
    .local v11, "onKeyguard":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v28

    if-eqz v28, :cond_1b

    const/4 v4, 0x1

    .line 3015
    .local v4, "doNotRemoveOverFlow":Z
    :goto_b
    if-eqz v11, :cond_1d

    if-eqz v4, :cond_1d

    const/4 v11, 0x1

    .line 3016
    :goto_c
    if-eqz v6, :cond_10

    .line 3017
    const/4 v10, 0x1

    .line 3021
    :cond_10
    const/4 v9, 0x0

    .line 3022
    .local v9, "isPersoLock":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v28, v0

    if-eqz v28, :cond_11

    .line 3023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isPersoLock()Z

    move-result v9

    .line 3027
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 3028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v11, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 3031
    :cond_12
    const/4 v8, 0x0

    :goto_d
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_29

    .line 3032
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 3037
    .restart local v5    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/app/Notification;->visibility:I

    move/from16 v25, v0

    .line 3040
    .local v25, "vis":I
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v28

    if-nez v28, :cond_1e

    const/4 v7, 0x1

    .line 3042
    .local v7, "hideSensitive":Z
    :goto_e
    if-nez v25, :cond_1f

    const/4 v13, 0x1

    .line 3043
    .local v13, "sensitive":Z
    :goto_f
    if-eqz v13, :cond_20

    if-eqz v7, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v28

    if-eqz v28, :cond_20

    const/4 v15, 0x1

    .line 3046
    .local v15, "showingPublic":Z
    :goto_10
    iget v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x8

    if-eqz v28, :cond_21

    const/4 v12, 0x1

    .line 3047
    .local v12, "sanitize":Z
    :goto_11
    if-nez v11, :cond_13

    if-nez v15, :cond_13

    if-eqz v12, :cond_23

    .line 3049
    :cond_13
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldExpandOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v28

    if-eqz v28, :cond_22

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    .line 3050
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    .line 3051
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    .line 3062
    :cond_14
    :goto_12
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v14

    .line 3063
    .local v14, "showOnKeyguard":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v28

    if-eqz v28, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    move/from16 v28, v0

    if-eqz v28, :cond_18

    :cond_15
    if-eqz v11, :cond_16

    move/from16 v0, v26

    if-ge v0, v10, :cond_18

    if-eqz v14, :cond_18

    :cond_16
    if-eqz v9, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSingleLine:Z

    move/from16 v28, v0

    if-nez v28, :cond_26

    .line 3066
    :cond_18
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 3067
    if-eqz v11, :cond_19

    if-eqz v14, :cond_19

    if-nez v9, :cond_19

    .line 3068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->addNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 3031
    :cond_19
    :goto_13
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_d

    .line 3013
    .end local v4    # "doNotRemoveOverFlow":Z
    .end local v5    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v7    # "hideSensitive":Z
    .end local v9    # "isPersoLock":Z
    .end local v11    # "onKeyguard":Z
    .end local v12    # "sanitize":Z
    .end local v13    # "sensitive":Z
    .end local v14    # "showOnKeyguard":Z
    .end local v15    # "showingPublic":Z
    .end local v25    # "vis":I
    :cond_1a
    const/4 v11, 0x0

    goto/16 :goto_a

    .line 3014
    .restart local v11    # "onKeyguard":Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v28

    if-nez v28, :cond_1c

    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 3015
    .restart local v4    # "doNotRemoveOverFlow":Z
    :cond_1d
    const/4 v11, 0x0

    goto/16 :goto_c

    .line 3040
    .restart local v5    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v9    # "isPersoLock":Z
    .restart local v25    # "vis":I
    :cond_1e
    const/4 v7, 0x0

    goto/16 :goto_e

    .line 3042
    .restart local v7    # "hideSensitive":Z
    :cond_1f
    const/4 v13, 0x0

    goto/16 :goto_f

    .line 3043
    .restart local v13    # "sensitive":Z
    :cond_20
    const/4 v15, 0x0

    goto/16 :goto_10

    .line 3046
    .restart local v15    # "showingPublic":Z
    :cond_21
    const/4 v12, 0x0

    goto/16 :goto_11

    .line 3053
    .restart local v12    # "sanitize":Z
    :cond_22
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    goto/16 :goto_12

    .line 3056
    :cond_23
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    .line 3057
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v28

    if-nez v28, :cond_14

    .line 3058
    if-nez v8, :cond_24

    const/16 v24, 0x1

    .line 3059
    .local v24, "top":Z
    :goto_14
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    if-eqz v24, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldHideSensitiveContents(I)Z

    move-result v28

    if-nez v28, :cond_25

    const/16 v28, 0x1

    :goto_15
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    goto/16 :goto_12

    .line 3058
    .end local v24    # "top":Z
    :cond_24
    const/16 v24, 0x0

    goto :goto_14

    .line 3059
    .restart local v24    # "top":Z
    :cond_25
    const/16 v28, 0x0

    goto :goto_15

    .line 3071
    .end local v24    # "top":Z
    .restart local v14    # "showOnKeyguard":Z
    :cond_26
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_28

    const/16 v27, 0x1

    .line 3072
    .local v27, "wasGone":Z
    :goto_16
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 3073
    if-eqz v27, :cond_27

    .line 3075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    .line 3077
    :cond_27
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_13

    .line 3071
    .end local v27    # "wasGone":Z
    :cond_28
    const/16 v27, 0x0

    goto :goto_16

    .line 3081
    .end local v5    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v7    # "hideSensitive":Z
    .end local v12    # "sanitize":Z
    .end local v13    # "sensitive":Z
    .end local v14    # "showOnKeyguard":Z
    .end local v15    # "showingPublic":Z
    .end local v25    # "vis":I
    :cond_29
    if-eqz v11, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v28

    if-lez v28, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSingleLine:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2d

    .line 3082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2c

    const/16 v27, 0x1

    .line 3083
    .restart local v27    # "wasGone":Z
    :goto_17
    if-eqz v27, :cond_2a

    .line 3084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    .line 3087
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setVisibility(I)V

    .line 3094
    .end local v27    # "wasGone":Z
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    invoke-virtual/range {v28 .. v30}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 3095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v30

    add-int/lit8 v30, v30, -0x2

    invoke-virtual/range {v28 .. v30}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 3099
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMSim()Z

    move-result v28

    if-eqz v28, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getNumberOfActiveSim()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2b

    .line 3100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    invoke-virtual/range {v28 .. v30}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 3103
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 3104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 3106
    return-void

    .line 3082
    :cond_2c
    const/16 v27, 0x0

    goto/16 :goto_17

    .line 3089
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setVisibility(I)V

    goto/16 :goto_18
.end method

.method protected updateSearchPanel()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1862
    const/4 v3, 0x0

    .line 1863
    .local v3, "visible":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v4, :cond_0

    .line 1864
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/SearchPanelView;->isShowing()Z

    move-result v3

    .line 1865
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v4, v7}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1869
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1870
    .local v1, "tmpRoot":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f0400b9

    invoke-virtual {v4, v7, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/SearchPanelView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    .line 1872
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    new-instance v7, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v8, 0x403

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/StatusBarPanel;)V

    invoke-virtual {v4, v7}, Lcom/android/systemui/SearchPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1874
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    .line 1875
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isVertical()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v5

    .line 1876
    .local v2, "vertical":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/SearchPanelView;->setHorizontal(Z)V

    .line 1878
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/SearchPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1880
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v4, v7, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1881
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, p0}, Lcom/android/systemui/SearchPanelView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 1882
    if-eqz v3, :cond_1

    .line 1883
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    .line 1885
    :cond_1
    return-void

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "vertical":Z
    :cond_2
    move v2, v6

    .line 1875
    goto :goto_0
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1997
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    .line 2021
    :goto_0
    return v3

    .line 2004
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2005
    const/4 p1, 0x0

    .line 2009
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_5

    .line 2010
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_allow_private_notifications"

    invoke-static {v5, v6, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 2013
    .local v0, "allowed":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v2

    .line 2015
    .local v2, "dpmFlags":I
    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_3

    move v1, v3

    .line 2017
    .local v1, "allowedByDpm":Z
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    :goto_3
    invoke-virtual {v5, p1, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    move v3, v0

    .line 2018
    goto :goto_0

    .end local v0    # "allowed":Z
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "dpmFlags":I
    :cond_2
    move v0, v4

    .line 2010
    goto :goto_1

    .restart local v0    # "allowed":Z
    .restart local v2    # "dpmFlags":I
    :cond_3
    move v1, v4

    .line 2015
    goto :goto_2

    .restart local v1    # "allowedByDpm":Z
    :cond_4
    move v3, v4

    .line 2017
    goto :goto_3

    .line 2021
    .end local v0    # "allowed":Z
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "dpmFlags":I
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    goto :goto_0
.end method

.method public userSwitched(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 1359
    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 2841
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_1

    .line 2842
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPanelSlightlyVisible:Z

    .line 2843
    if-nez p1, :cond_0

    .line 2844
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    .line 2847
    :cond_0
    if-eqz p1, :cond_2

    .line 2848
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->panelRevealedByUser:Z

    if-eqz v0, :cond_1

    .line 2849
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2858
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->panelRevealedByUser:Z

    .line 2859
    return-void

    .line 2852
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2854
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2103
    return-void
.end method
