.class public Lcom/android/keyguard/sec/KeyguardVoiceWrapper;
.super Ljava/lang/Object;
.source "KeyguardVoiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardVoiceWrapper$WakeUpCommandCallback;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_OPEN:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field private static final TAG:Ljava/lang/String; = "KeyguardVoiceWrapperDummy"


# instance fields
.field mContext:Landroid/content/Context;

.field private mUsingWakeUpCommand:Z

.field private mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$WakeUpCommandCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helpText"    # Landroid/widget/TextView;
    .param p3, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mUsingWakeUpCommand:Z

    .line 58
    new-instance v0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;-><init>(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$WakeUpCommandCallback;

    .line 48
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->intitializeAndStart()V

    .line 50
    return-void
.end method

.method private intitializeAndStart()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method


# virtual methods
.method public checkWakeUpCommandCondition()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wake_up_lock_screen"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 113
    .local v0, "isMultipleWakeUpOn":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mUsingWakeUpCommand:Z

    return v1

    .end local v0    # "isMultipleWakeUpOn":Z
    :cond_0
    move v0, v1

    .line 110
    goto :goto_0
.end method

.method public cleanUpVoiceThread()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 95
    return-void
.end method

.method public pauseVoiceThread()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public refreshDefaultHelpText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_unlock_guide_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "mDefaultHelpText":Ljava/lang/String;
    return-object v0
.end method

.method public resumeVoiceThread()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 118
    return-void
.end method
