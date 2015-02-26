.class public Lcom/android/systemui/recents/RecentsActivity;
.super Landroid/app/Activity;
.source "RecentsActivity.java"

# interfaces
.implements Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;
.implements Lcom/android/systemui/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;
.implements Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;,
        Lcom/android/systemui/recents/RecentsActivity$OnTouchShortcutIcon;,
        Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;,
        Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchGoogleButton;,
        Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;,
        Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchButton;,
        Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;
    }
.end annotation


# static fields
.field private static final CONTROL_PANEL_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.controlpanel.activity.JobManagerActivity"

.field private static final CONTROL_PANEL_PACKAGE:Ljava/lang/String; = "com.sec.android.app.controlpanel"

.field public static final EDM_FALSE:I = 0x0

.field public static final EDM_NULL:I = -0x1

.field public static final EDM_TRUE:I = 0x1

.field private static final MAX_NUM_SHORTCUT_BUTTONS:I = 0x4

.field private static final PATTERN_COMMA:Ljava/util/regex/Pattern;

.field public static final TAG:Ljava/lang/String; = "Recents_RecentsActivity"

.field private static final TASK_MANAGER_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.taskmanager.activity.TaskManagerActivity"

.field private static final TASK_MANAGER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.taskmanager"

.field private static final TW_TAG:Ljava/lang/String; = "StatusBar_Recents"

.field public static mBackPressed:Z

.field public static mRemoveAllButtonClicked:Z

.field private static mStatusBarManager:Landroid/app/StatusBarManager;


# instance fields
.field mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

.field mCloseAllButton:Landroid/view/View;

.field mCloseAllButtonFragment:Lcom/android/systemui/recents/CloseAllButtonFragment;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field mDebugOverlayStub:Landroid/view/ViewStub;

.field final mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

.field mDismissRecentRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

.field mEmptyView:Landroid/view/View;

.field mEmptyViewStub:Landroid/view/ViewStub;

.field mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

.field mLastTabKeyEventTime:J

.field mRecentsButtons:Landroid/view/View;

.field private mRecentsDivider01:Landroid/widget/LinearLayout;

.field private mRecentsDivider02:Landroid/widget/LinearLayout;

.field private mRecentsGoogleButton:Landroid/view/View;

.field mRecentsLaunchButton:Landroid/view/View;

.field mRecentsRemoveAllButton:Landroid/view/View;

.field mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

.field mSearchAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

.field mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mShortcutComponentNames:[Ljava/lang/String;

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    sput-boolean v0, Lcom/android/systemui/recents/RecentsActivity;->mBackPressed:Z

    .line 118
    sput-boolean v0, Lcom/android/systemui/recents/RecentsActivity;->mRemoveAllButtonClicked:Z

    .line 140
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recents/RecentsActivity;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 192
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$1;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$2;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 244
    new-instance v0, Lcom/android/systemui/recents/misc/DebugTrigger;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$3;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/DebugTrigger;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    .line 1132
    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/systemui/recents/RecentsActivity;->notifyRecentPanelVisiblity(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/recents/RecentsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->isTaskManagerInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/recents/RecentsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->isControlPanelInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/recents/RecentsActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mShortcutComponentNames:[Ljava/lang/String;

    return-object v0
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 252
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 253
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 254
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 256
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 267
    :goto_0
    return v0

    .line 260
    :cond_0
    const/4 v0, 0x0

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isControlPanelInstalled()Z
    .locals 6

    .prologue
    .line 1210
    const/4 v2, 0x0

    .line 1212
    .local v2, "useControlPanel":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.controlpanel"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1214
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 1215
    const/4 v2, 0x1

    .line 1223
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 1217
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1219
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 1220
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 1221
    const-string v3, "StatusBar_Recents"

    const-string v4, "CONTROL_PANEL_PACKAGE not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isEnableEmergencyMode(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1228
    if-nez p0, :cond_0

    .line 1231
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isTaskManagerInstalled()Z
    .locals 6

    .prologue
    .line 1193
    const/4 v2, 0x0

    .line 1195
    .local v2, "useTaskManager":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.taskmanager"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1197
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 1198
    const/4 v2, 0x1

    .line 1206
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 1200
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1202
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 1203
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 1204
    const-string v3, "StatusBar_Recents"

    const-string v4, "TASK_MANAGER_PACKAGE not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static notifyRecentPanelVisiblity(Z)V
    .locals 2
    .param p0, "visible"    # Z

    .prologue
    .line 1236
    sget-object v0, Lcom/android/systemui/recents/RecentsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 1237
    sget-object v0, Lcom/android/systemui/recents/RecentsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, p0}, Landroid/app/StatusBarManager;->notifyRecentPanelVisiblity(Z)V

    .line 1241
    :goto_0
    return-void

    .line 1239
    :cond_0
    const-string v0, "Recents_RecentsActivity"

    const-string v1, "mStatusBarManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method addSearchBarAppWidgetView()V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method bindSearchBarAppWidget()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 964
    const-string v0, "Recents_RecentsActivity"

    const-string v1, "dismiss is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDismissRecentRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    .line 966
    return-void
.end method

.method dismissRecentsToAltHomeRaw(Z)V
    .locals 5
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x0

    .line 490
    const-string v1, "Recents_RecentsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissRecentsToAltHomeRaw is getting called animated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    if-eqz p1, :cond_0

    .line 492
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDismissRecentRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-direct {v0, p0, v4, v1, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 494
    .local v0, "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 499
    .end local v0    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDismissRecentRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method dismissRecentsToFocusedTaskOrHome(Z)Z
    .locals 5
    .param p1, "checkFilteredStackState"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 442
    const-string v2, "Recents_RecentsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dismissRecentsToFocusedTaskOrHome is getting called mVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mVisible:Z

    if-eqz v2, :cond_5

    .line 445
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->unfilterFilteredStacks()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 448
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask()Z

    move-result v2

    if-nez v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v2, :cond_2

    .line 451
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToAltHomeRaw(Z)V

    goto :goto_0

    .line 455
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 459
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 464
    :cond_3
    sget-boolean v2, Lcom/android/systemui/recents/RecentsActivity;->mBackPressed:Z

    if-eqz v2, :cond_4

    .line 465
    sput-boolean v1, Lcom/android/systemui/recents/RecentsActivity;->mBackPressed:Z

    .line 466
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToAltHomeRaw(Z)V

    goto :goto_0

    .line 470
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismiss()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 473
    goto :goto_0
.end method

.method dismissRecentsToHome(Z)Z
    .locals 5
    .param p1, "animated"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 503
    const-string v2, "Recents_RecentsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dismissRecentsToHome is getting called animated="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mVisible:Z

    if-eqz v2, :cond_1

    .line 506
    sget-boolean v2, Lcom/android/systemui/recents/RecentsActivity;->mRemoveAllButtonClicked:Z

    if-ne v2, v0, :cond_0

    .line 507
    sput-boolean v1, Lcom/android/systemui/recents/RecentsActivity;->mRemoveAllButtonClicked:Z

    .line 508
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToAltHomeRaw(Z)V

    .line 514
    :goto_0
    return v0

    .line 510
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 514
    goto :goto_0
.end method

.method dismissRecentsToHomeRaw(Z)V
    .locals 5
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x0

    .line 478
    const-string v1, "Recents_RecentsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissRecentsToHomeRaw is getting called animated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    if-eqz p1, :cond_0

    .line 480
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-direct {v0, p0, v4, v1, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 482
    .local v0, "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 487
    .end local v0    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method inflateDebugOverlay()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlayStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/DebugOverlayView;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    .line 720
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/views/DebugOverlayView;->setCallbacks(Lcom/android/systemui/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;)V

    .line 721
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setDebugOverlay(Lcom/android/systemui/recents/views/DebugOverlayView;)V

    .line 723
    :cond_0
    return-void
.end method

.method public onAllTaskViewsDismissed()V
    .locals 3

    .prologue
    .line 951
    const-string v1, "Recents_RecentsActivity"

    const-string v2, "onAllTaskViewsDismissed is getting called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDismissRecentRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    .line 953
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 955
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const v1, 0x7f060001

    const/high16 v2, 0x7f060000

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 956
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mCloseAllButtonFragment:Lcom/android/systemui/recents/CloseAllButtonFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 957
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 958
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    .line 960
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method public onAltTaskViewClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 937
    const-string v0, "Recents_RecentsActivity"

    const-string v1, "onAltTaskViewClicked is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-static {v2}, Lcom/android/systemui/recents/RecentsActivity;->notifyRecentPanelVisiblity(Z)V

    .line 940
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mVisible:Z

    .line 941
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 880
    const-string v0, "Recents_RecentsActivity"

    const-string v1, "onBackPressed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v0, :cond_0

    .line 885
    :goto_0
    return-void

    .line 882
    :cond_0
    sput-boolean v2, Lcom/android/systemui/recents/RecentsActivity;->mBackPressed:Z

    .line 884
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome(Z)Z

    goto :goto_0
.end method

.method onConfigurationChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 727
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 731
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v0, p0, v2, v2, v2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 732
    .local v0, "t":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 733
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->onEnterAnimationTriggered()V

    .line 734
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 27
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 520
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 522
    const-string v23, "Recents_RecentsActivity"

    const-string v24, "onCreate is getting called"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v23, "statusbar"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/StatusBarManager;

    sput-object v23, Lcom/android/systemui/recents/RecentsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 525
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 528
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 532
    new-instance v23, Lcom/android/systemui/recents/RecentsAppWidgetHost;

    sget v24, Lcom/android/systemui/recents/Constants$Values$App;->AppWidgetHostId:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsAppWidgetHost;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    .line 535
    const v23, 0x7f04006e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->setContentView(I)V

    .line 536
    const v23, 0x7f0e01fe

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v23, v0

    const/16 v24, 0x700

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    .line 541
    const v23, 0x7f0e01ff

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewStub;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    .line 542
    const v23, 0x7f0e0200

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewStub;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlayStub:Landroid/view/ViewStub;

    .line 543
    new-instance v23, Lcom/android/systemui/recents/views/SystemBarScrimViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/SystemBarScrimViews;-><init>(Landroid/app/Activity;Lcom/android/systemui/recents/RecentsConfiguration;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 547
    sget-boolean v23, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v23, :cond_7

    .line 548
    sget-boolean v23, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v23, :cond_5

    .line 549
    const v23, 0x7f0e020f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    .line 550
    const v23, 0x7f0e0210

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    .line 551
    const v23, 0x7f0e0214

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    .line 557
    :goto_0
    sget-boolean v23, Lcom/android/systemui/statusbar/Feature;->mShowRecentGoogleNowButton:Z

    if-eqz v23, :cond_1

    .line 558
    sget-boolean v23, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v23, :cond_6

    .line 559
    const v23, 0x7f0e0212

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    .line 560
    const v23, 0x7f0e0211

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDivider01:Landroid/widget/LinearLayout;

    .line 561
    const v23, 0x7f0e0213

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDivider02:Landroid/widget/LinearLayout;

    .line 567
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchGoogleButton;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchGoogleButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 572
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDivider02:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDivider02:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 577
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchButton;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 582
    sget-boolean v23, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v23, :cond_2

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setHoverPopupType(I)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setHoverPopupType(I)V

    .line 594
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->bindSearchBarAppWidget()V

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsTasks(Landroid/content/Intent;)V

    .line 599
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 600
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v23, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 601
    const-string v23, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 605
    sget-boolean v23, Lcom/android/systemui/statusbar/Feature;->mShowRecentApplicationShortCut:Z

    if-eqz v23, :cond_9

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 607
    .local v14, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v23

    const-string v24, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 609
    .local v19, "shortcutAppList":Ljava/lang/String;
    sget-object v23, Lcom/android/systemui/recents/RecentsActivity;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mShortcutComponentNames:[Ljava/lang/String;

    .line 610
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    .line 611
    .local v17, "shortCutLayout":[Landroid/widget/LinearLayout;
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Landroid/widget/ImageView;

    move-object/from16 v16, v0

    .line 612
    .local v16, "shortCutIcons":[Landroid/widget/ImageView;
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Landroid/widget/TextView;

    move-object/from16 v18, v0

    .line 613
    .local v18, "shortCutTexts":[Landroid/widget/TextView;
    const/4 v13, 0x0

    .line 615
    .local v13, "numIcons":I
    const/16 v24, 0x0

    const v23, 0x7f0e0203

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    aput-object v23, v17, v24

    .line 616
    const/16 v24, 0x1

    const v23, 0x7f0e0206

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    aput-object v23, v17, v24

    .line 617
    const/16 v24, 0x2

    const v23, 0x7f0e0209

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    aput-object v23, v17, v24

    .line 618
    const/16 v24, 0x3

    const v23, 0x7f0e020c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    aput-object v23, v17, v24

    .line 620
    const/16 v24, 0x0

    const v23, 0x7f0e0204

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    aput-object v23, v16, v24

    .line 621
    const/16 v24, 0x1

    const v23, 0x7f0e0207

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    aput-object v23, v16, v24

    .line 622
    const/16 v24, 0x2

    const v23, 0x7f0e020a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    aput-object v23, v16, v24

    .line 623
    const/16 v24, 0x3

    const v23, 0x7f0e020d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    aput-object v23, v16, v24

    .line 625
    const/16 v24, 0x0

    const v23, 0x7f0e0205

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    aput-object v23, v18, v24

    .line 626
    const/16 v24, 0x1

    const v23, 0x7f0e0208

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    aput-object v23, v18, v24

    .line 627
    const/16 v24, 0x2

    const v23, 0x7f0e020b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    aput-object v23, v18, v24

    .line 628
    const/16 v24, 0x3

    const v23, 0x7f0e020e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    aput-object v23, v18, v24

    .line 630
    const/4 v7, -0x1

    .line 632
    .local v7, "curFocus":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_8

    const/16 v23, 0x4

    move/from16 v0, v23

    if-ge v10, v0, :cond_8

    .line 633
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 635
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    invoke-static/range {v23 .. v23}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 636
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v11, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 637
    .local v15, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v15, :cond_4

    .line 638
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    .line 639
    .local v21, "shortcutText":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 640
    .local v20, "shortcutIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v20, :cond_4

    if-eqz v21, :cond_4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_4

    .line 641
    aget-object v23, v17, v10

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 642
    aget-object v23, v17, v10

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 643
    aget-object v23, v17, v10

    new-instance v24, Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x5a

    const/16 v26, 0x5a

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 647
    aget-object v23, v16, v10

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 648
    aget-object v23, v16, v10

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 649
    aget-object v23, v16, v10

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 650
    aget-object v23, v16, v10

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 651
    aget-object v23, v16, v10

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 652
    aget-object v23, v16, v10

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->clearFocus()V

    .line 653
    aget-object v23, v16, v10

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    const/16 v24, 0xff

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 655
    aget-object v23, v18, v10

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    aget-object v23, v16, v10

    new-instance v24, Lcom/android/systemui/recents/RecentsActivity$OnTouchShortcutIcon;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity$OnTouchShortcutIcon;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 658
    aget-object v23, v16, v10

    new-instance v24, Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    add-int/lit8 v13, v13, 0x1

    .line 661
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v7, v0, :cond_3

    .line 662
    aget-object v23, v17, v10

    aget-object v24, v17, v7

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setNextFocusLeftId(I)V

    .line 663
    aget-object v23, v17, v7

    aget-object v24, v17, v10

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setNextFocusRightId(I)V

    .line 665
    :cond_3
    move v7, v10

    .line 632
    .end local v20    # "shortcutIcon":Landroid/graphics/drawable/Drawable;
    .end local v21    # "shortcutText":Ljava/lang/String;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 553
    .end local v7    # "curFocus":I
    .end local v9    # "filter":Landroid/content/IntentFilter;
    .end local v10    # "i":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "numIcons":I
    .end local v14    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v15    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v16    # "shortCutIcons":[Landroid/widget/ImageView;
    .end local v17    # "shortCutLayout":[Landroid/widget/LinearLayout;
    .end local v18    # "shortCutTexts":[Landroid/widget/TextView;
    .end local v19    # "shortcutAppList":Ljava/lang/String;
    :cond_5
    const v23, 0x7f0e0215

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    .line 554
    const v23, 0x7f0e0216

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    .line 555
    const v23, 0x7f0e021a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    goto/16 :goto_0

    .line 563
    :cond_6
    const v23, 0x7f0e0218

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    .line 564
    const v23, 0x7f0e0217

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDivider01:Landroid/widget/LinearLayout;

    .line 565
    const v23, 0x7f0e0219

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDivider02:Landroid/widget/LinearLayout;

    goto/16 :goto_1

    .line 588
    :cond_7
    const v23, 0x7f0e021b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 670
    .restart local v7    # "curFocus":I
    .restart local v9    # "filter":Landroid/content/IntentFilter;
    .restart local v10    # "i":I
    .restart local v13    # "numIcons":I
    .restart local v14    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v16    # "shortCutIcons":[Landroid/widget/ImageView;
    .restart local v17    # "shortCutLayout":[Landroid/widget/LinearLayout;
    .restart local v18    # "shortCutTexts":[Landroid/widget/TextView;
    .restart local v19    # "shortcutAppList":Ljava/lang/String;
    :cond_8
    const v23, 0x7f0e0202

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 672
    .local v5, "applicationShortcutLayout":Landroid/widget/LinearLayout;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 678
    .end local v5    # "applicationShortcutLayout":Landroid/widget/LinearLayout;
    .end local v7    # "curFocus":I
    .end local v10    # "i":I
    .end local v13    # "numIcons":I
    .end local v14    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v16    # "shortCutIcons":[Landroid/widget/ImageView;
    .end local v17    # "shortCutLayout":[Landroid/widget/LinearLayout;
    .end local v18    # "shortCutTexts":[Landroid/widget/TextView;
    .end local v19    # "shortcutAppList":Ljava/lang/String;
    :cond_9
    :try_start_0
    const-string v23, "ambientRatio"

    const/high16 v24, 0x3fc00000    # 1.5f

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/systemui/recents/misc/Utilities;->setShadowProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 686
    :goto_4
    if-eqz p1, :cond_a

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/recents/RecentsConfiguration;->updateOnConfigurationChange()V

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->onConfigurationChange()V

    .line 693
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    move/from16 v23, v0

    if-ltz v23, :cond_b

    .line 694
    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 696
    .local v6, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/systemui/recents/RecentsActivity$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/recents/RecentsActivity$4;-><init>(Lcom/android/systemui/recents/RecentsActivity;Ljava/lang/ref/WeakReference;)V

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/recents/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    .line 706
    .end local v6    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v22

    .line 707
    .local v22, "win":Landroid/view/Window;
    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 708
    .local v12, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v23, v0

    move/from16 v0, v23

    or-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 709
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 710
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x42

    move/from16 v0, v23

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 712
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 713
    return-void

    .line 679
    .end local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v22    # "win":Landroid/view/Window;
    :catch_0
    move-exception v8

    .line 680
    .local v8, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4

    .line 681
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v8

    .line 682
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4
.end method

.method public onDebugModeTriggered()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 890
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    if-eqz v1, :cond_0

    .line 891
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/recents/RecentsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 892
    .local v0, "settings":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 894
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 895
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v3, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 896
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 897
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/DebugOverlayView;->disable()V

    .line 905
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug mode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->DebugModeVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v1, :cond_2

    const-string v1, "Enabled"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", please restart Recents now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 909
    .end local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 900
    .restart local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 901
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 902
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 903
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/DebugOverlayView;->enable()V

    goto :goto_0

    .line 905
    :cond_2
    const-string v1, "Disabled"

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 803
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 804
    const-string v0, "Recents_RecentsActivity"

    const-string v1, "onDestroy is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 810
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHost;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHost;->stopListening()V

    .line 814
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recents/RecentsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 815
    return-void
.end method

.method public onEnterAnimationTriggered()V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startEnterRecentsAnimation()V

    .line 915
    return-void
.end method

.method public onExitToHomeAnimationTriggered()V
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startExitRecentsAnimation()V

    .line 923
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 827
    sparse-switch p1, :sswitch_data_0

    .line 868
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/misc/DebugTrigger;->onKeyEvent(I)V

    .line 869
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_0
    return v2

    .line 829
    :sswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->altTabKeyDelay:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move v1, v2

    .line 831
    .local v1, "hasRepKeyTimeElapsed":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_2

    if-eqz v1, :cond_1

    .line 833
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    .line 834
    .local v0, "backward":Z
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-nez v0, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    .line 835
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    goto :goto_0

    .end local v0    # "backward":Z
    .end local v1    # "hasRepKeyTimeElapsed":Z
    :cond_4
    move v1, v3

    .line 829
    goto :goto_1

    .line 840
    :sswitch_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 844
    :sswitch_2
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 851
    :sswitch_3
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowRecentGoogleNowButton:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 853
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 861
    :sswitch_4
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->dismissFocusedTask()V

    goto :goto_0

    .line 827
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x3d -> :sswitch_0
        0x43 -> :sswitch_4
        0x70 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 738
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 739
    const-string v0, "Recents_RecentsActivity"

    const-string v1, "onNewIntent is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->setIntent(Landroid/content/Intent;)V

    .line 743
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    .line 746
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->clear()V

    .line 751
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsTasks(Landroid/content/Intent;)V

    .line 752
    return-void
.end method

.method public onPrimarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 996
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 771
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 772
    const-string v0, "Recents_RecentsActivity"

    const-string v1, "onResume is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultra_powersaving_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 780
    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mVisible:Z

    .line 781
    return-void
.end method

.method public onSecondarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 1001
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 756
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 757
    const-string v1, "Recents_RecentsActivity"

    const-string v2, "onStart is getting called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 760
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "action_hide_recents_activity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 761
    const-string v1, "action_toggle_recents_activity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 762
    const-string v1, "action_start_enter_animation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 766
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->registerReceivers(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    .line 767
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 785
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 786
    const-string v0, "Recents_RecentsActivity"

    const-string v1, "onStop is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->removeAllTaskStacks()V

    .line 795
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 798
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unregisterReceivers()V

    .line 799
    return-void
.end method

.method public onTaskLaunchFailed()V
    .locals 1

    .prologue
    .line 946
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    .line 947
    return-void
.end method

.method public onTaskStackUpperBounds(Z)V
    .locals 4
    .param p1, "isUpperBounds"    # Z

    .prologue
    .line 970
    const-string v1, "Recents_RecentsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTaskStackUpperBounds is getting called : isUpperBounds ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_0

    .line 972
    sget-object v1, Lcom/android/systemui/recents/RecentsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 973
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 974
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 975
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const v1, 0x7f060001

    const/high16 v2, 0x7f060000

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 976
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mCloseAllButtonFragment:Lcom/android/systemui/recents/CloseAllButtonFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 977
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 978
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    .line 981
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method public onTaskViewClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 928
    const-string v0, "Recents_RecentsActivity"

    const-string v1, "onTaskViewClicked is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-static {v2}, Lcom/android/systemui/recents/RecentsActivity;->notifyRecentPanelVisiblity(Z)V

    .line 931
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mVisible:Z

    .line 932
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 819
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 820
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    .line 823
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->onUserInteraction()V

    .line 875
    return-void
.end method

.method public refreshSearchWidget()V
    .locals 0

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->bindSearchBarAppWidget()V

    .line 988
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->addSearchBarAppWidgetView()V

    .line 989
    return-void
.end method

.method updateRecentsTasks(Landroid/content/Intent;)V
    .locals 21
    .param p1, "launchIntent"    # Landroid/content/Intent;

    .prologue
    .line 272
    const-string v18, "Recents_RecentsActivity"

    const-string v19, "updateRecentsTasks is getting called"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v18, "recents.triggeredOverSearchHome"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 276
    .local v4, "fromSearchHome":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v19, v0

    if-nez v4, :cond_0

    const-string v18, "recents.triggeredOverHome"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_3

    :cond_0
    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    const-string v19, "recents.animatingWithThumbnail"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    const-string v19, "recents.thumbnail"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithScreenshot:Z

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    const-string v19, "recents.activeTaskId"

    const/16 v20, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    const-string v19, "recents.triggeredFromAltTab"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    .line 288
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v10

    .line 289
    .local v10, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    const/16 v18, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->reload(Landroid/content/Context;IZZ)Lcom/android/systemui/recents/model/SpaceNode;

    move-result-object v11

    .line 293
    .local v11, "root":Lcom/android/systemui/recents/model/SpaceNode;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    .line 294
    invoke-virtual {v11}, Lcom/android/systemui/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    .line 296
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v12, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "true"

    aput-object v19, v12, v18

    .line 297
    .local v12, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "content://com.sec.knox.provider2/KioskMode"

    const-string v20, "isTaskManagerAllowed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v12}, Lcom/android/systemui/recents/RecentsActivity;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 299
    .local v8, "isKioskMode":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_4

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_4

    .line 308
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/SpaceNode;->hasTasks()Z

    move-result v18

    if-nez v18, :cond_5

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    .line 311
    new-instance v6, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 312
    .local v6, "homeIntent":Landroid/content/Intent;
    const-string v18, "android.intent.category.HOME"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const/high16 v18, 0x10200000

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    new-instance v20, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    if-eqz v4, :cond_6

    const v18, 0x7f05002c

    move/from16 v19, v18

    :goto_3
    if-eqz v4, :cond_7

    const v18, 0x7f05002d

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v6, v2}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    .line 321
    new-instance v18, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mDismissRecentRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 325
    .local v16, "taskStackCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 326
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    move/from16 v0, v16

    if-ge v7, v0, :cond_9

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/model/TaskStack;

    .line 328
    .local v13, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v13}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v17

    .line 329
    .local v17, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 330
    .local v15, "taskCount":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_6
    if-ge v9, v15, :cond_2

    .line 331
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recents/model/Task;

    .line 332
    .local v14, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v0, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 333
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v14, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 326
    .end local v14    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 276
    .end local v6    # "homeIntent":Landroid/content/Intent;
    .end local v7    # "i":I
    .end local v8    # "isKioskMode":I
    .end local v9    # "j":I
    .end local v10    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .end local v11    # "root":Lcom/android/systemui/recents/model/SpaceNode;
    .end local v12    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v15    # "taskCount":I
    .end local v16    # "taskStackCount":I
    .end local v17    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 302
    .restart local v8    # "isKioskMode":I
    .restart local v10    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .restart local v11    # "root":Lcom/android/systemui/recents/model/SpaceNode;
    .restart local v12    # "selectionArgs":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v18, v0

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/recents/views/RecentsView;->setTaskStacks(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 308
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 315
    .restart local v6    # "homeIntent":Landroid/content/Intent;
    :cond_6
    const v18, 0x7f05002a

    move/from16 v19, v18

    goto/16 :goto_3

    :cond_7
    const v18, 0x7f05002b

    goto/16 :goto_4

    .line 330
    .restart local v7    # "i":I
    .restart local v9    # "j":I
    .restart local v13    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v14    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v15    # "taskCount":I
    .restart local v16    # "taskStackCount":I
    .restart local v17    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 341
    .end local v7    # "i":I
    .end local v9    # "j":I
    .end local v13    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v14    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v15    # "taskCount":I
    .end local v17    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v18, v0

    if-nez v18, :cond_a

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    .line 345
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setEnabled(Z)V

    .line 348
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    .line 363
    :goto_7
    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v18, :cond_12

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/recents/RecentsActivity;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 383
    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->prepareEnterRecentsAnimation()V

    .line 384
    return-void

    .line 351
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 354
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setEnabled(Z)V

    .line 357
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/views/RecentsView;->hasSearchBar()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    goto :goto_7

    .line 360
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->addSearchBarAppWidgetView()V

    goto :goto_7

    .line 366
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 370
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    move/from16 v18, v0

    if-nez v18, :cond_c

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v18

    const v19, 0x7f0e021c

    invoke-virtual/range {v18 .. v19}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/recents/CloseAllButtonFragment;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mCloseAllButtonFragment:Lcom/android/systemui/recents/CloseAllButtonFragment;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mCloseAllButtonFragment:Lcom/android/systemui/recents/CloseAllButtonFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/CloseAllButtonFragment;->getView()Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mCloseAllButton:Landroid/view/View;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mCloseAllButton:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mCloseAllButton:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 376
    .local v5, "ft":Landroid/app/FragmentTransaction;
    const v18, 0x7f060001

    const/high16 v19, 0x7f060000

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mCloseAllButtonFragment:Lcom/android/systemui/recents/CloseAllButtonFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 378
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    goto/16 :goto_8
.end method
