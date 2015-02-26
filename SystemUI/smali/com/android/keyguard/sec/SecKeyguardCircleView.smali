.class public Lcom/android/keyguard/sec/SecKeyguardCircleView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardCircleView.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SecKeyguardCircleView"


# instance fields
.field private mAnimatingViews:[Landroid/view/View;

.field protected mArrow:Landroid/widget/ImageView;

.field protected mArrowResId:I

.field protected mContentIcon:Landroid/widget/ImageView;

.field protected mContentResId:I

.field private mCurrentOrientation:F

.field private mHadFocus:Z

.field private mIsLandscapeAvailable:Z

.field private mIsScreenOn:Z

.field protected mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field protected mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field protected mPowerManager:Landroid/os/PowerManager;

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mScrollView:Landroid/widget/ScrollView;

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScrollView:Landroid/widget/ScrollView;

    .line 47
    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrowResId:I

    .line 48
    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentResId:I

    .line 50
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsScreenOn:Z

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    .line 54
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z

    .line 63
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 76
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHadFocus:Z

    .line 98
    new-instance v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getCircleView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;Lcom/android/keyguard/sec/KeyguardEffectViewBase;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z

    return v0
.end method

.method private varargs doTransition(F[Landroid/view/View;)V
    .locals 6
    .param p1, "to"    # F
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 350
    if-nez p2, :cond_1

    .line 373
    :cond_0
    return-void

    .line 354
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 355
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 356
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/keyguard/sec/SecKeyguardCircleView$4;

    invoke-direct {v5, p0, p1, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;FLandroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 354
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isLandscapeLayoutAvailable()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->shouldEnableScreenRotation()Z

    move-result v0

    .line 204
    .local v0, "enableScreenRotation":Z
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 207
    .local v1, "isAutoRotation":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    :goto_1
    return v2

    .end local v1    # "isAutoRotation":Z
    :cond_0
    move v1, v3

    .line 204
    goto :goto_0

    .restart local v1    # "isAutoRotation":Z
    :cond_1
    move v2, v3

    .line 207
    goto :goto_1
.end method

.method private onScreenTurnedOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 260
    const-string v0, "SecKeyguardCircleView"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsScreenOn:Z

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 266
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->startStopArrowAnimation(Z)V

    .line 267
    return-void
.end method

.method private onScreenTurnedOn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 251
    const-string v0, "SecKeyguardCircleView"

    const-string v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsScreenOn:Z

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 256
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->startStopArrowAnimation(Z)V

    .line 257
    return-void
.end method

.method private shouldEnableScreenRotation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 198
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/android/keyguard/R$bool;->config_enableLockScreenRotation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private startStopArrowAnimation(Z)V
    .locals 2
    .param p1, "start"    # Z

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 281
    .local v0, "anim":Landroid/graphics/drawable/AnimationDrawable;
    if-nez v0, :cond_1

    .line 290
    .end local v0    # "anim":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    :goto_0
    return-void

    .line 284
    .restart local v0    # "anim":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    if-eqz p1, :cond_2

    .line 285
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method


# virtual methods
.method protected getShortcutTextResId()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, -0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 148
    const-string v0, "SecKeyguardCircleView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 152
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->isLandscapeLayoutAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsScreenOn:Z

    .line 176
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 178
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 187
    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 189
    :cond_0
    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 190
    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    .line 191
    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAnimatingViews:[Landroid/view/View;

    .line 193
    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    .line 194
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 112
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 114
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrowResId:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    .line 115
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentResId:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPowerManager:Landroid/os/PowerManager;

    .line 118
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_accessibility_camera:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_camera_shortcut_tts:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    return-void
.end method

.method public onUnlockExecuted()V
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->DEFAULT:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    .line 302
    return-void
.end method

.method public onUnlockViewPressed()V
    .locals 2

    .prologue
    .line 306
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->PRESSED:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    .line 307
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setArrowVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getShortcutTextResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->setShortcutMessage(I)V

    .line 311
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->doTransition(F[Landroid/view/View;)V

    .line 312
    return-void
.end method

.method public onUnlockViewReleased()V
    .locals 2

    .prologue
    .line 316
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->DEFAULT:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setArrowVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->removeShortcutMessage()V

    .line 321
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->doTransition(F[Landroid/view/View;)V

    .line 322
    return-void
.end method

.method public onUnlockViewSwiped(Z)V
    .locals 1
    .param p1, "swiped"    # Z

    .prologue
    .line 326
    if-eqz p1, :cond_0

    .line 327
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->SWIPE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->PRESSED:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    goto :goto_0
.end method

.method protected rotateIcon(I)V
    .locals 11
    .param p1, "currentOrientation"    # I

    .prologue
    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/high16 v9, 0x43870000    # 270.0f

    const/high16 v8, 0x43340000    # 180.0f

    .line 211
    const-string v4, "SecKeyguardCircleView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rotateIcon-- mCurrentOrientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "currentOrientation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    int-to-float v5, p1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    .line 213
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    .line 214
    .local v0, "fromDegrees":F
    int-to-float v2, p1

    .line 215
    .local v2, "toDegrees":F
    cmpl-float v4, v0, v7

    if-nez v4, :cond_4

    cmpl-float v4, v2, v9

    if-nez v4, :cond_4

    .line 216
    const/high16 v0, 0x43b40000    # 360.0f

    .line 221
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cocktail_bar_enabled_180_rotate"

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v3, :cond_5

    move v1, v3

    .line 225
    .local v1, "rotate180Enabled":Z
    :goto_1
    if-ne v1, v3, :cond_1

    .line 226
    cmpl-float v3, v2, v8

    if-nez v3, :cond_7

    .line 227
    cmpl-float v3, v0, v10

    if-nez v3, :cond_6

    .line 228
    const/high16 v2, 0x43b40000    # 360.0f

    .line 239
    .end local v1    # "rotate180Enabled":Z
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 240
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 246
    :cond_2
    int-to-float v3, p1

    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    .line 248
    .end local v0    # "fromDegrees":F
    .end local v2    # "toDegrees":F
    :cond_3
    return-void

    .line 217
    .restart local v0    # "fromDegrees":F
    .restart local v2    # "toDegrees":F
    :cond_4
    cmpl-float v4, v0, v9

    if-nez v4, :cond_0

    cmpl-float v4, v2, v7

    if-nez v4, :cond_0

    .line 218
    const/high16 v2, 0x43b40000    # 360.0f

    goto :goto_0

    .line 222
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 230
    .restart local v1    # "rotate180Enabled":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 232
    :cond_7
    cmpl-float v3, v2, v10

    if-eqz v3, :cond_8

    cmpl-float v3, v2, v9

    if-nez v3, :cond_1

    :cond_8
    cmpl-float v3, v0, v8

    if-nez v3, :cond_1

    .line 233
    add-float/2addr v2, v8

    .line 234
    const/high16 v3, 0x43b40000    # 360.0f

    rem-float/2addr v2, v3

    goto :goto_2
.end method

.method public varargs setAnimatingViews([Landroid/view/View;)V
    .locals 0
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAnimatingViews:[Landroid/view/View;

    .line 347
    return-void
.end method

.method protected setArrowVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 271
    if-eqz p1, :cond_0

    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->startStopArrowAnimation(Z)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    :cond_1
    return-void
.end method

.method public setHelpText()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 343
    return-void
.end method

.method public setMessageHelper(Lcom/android/keyguard/KeyguardMessageArea$Helper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/keyguard/KeyguardMessageArea$Helper;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    .line 377
    return-void
.end method

.method public setScrollView(Landroid/widget/ScrollView;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/ScrollView;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScrollView:Landroid/widget/ScrollView;

    .line 104
    return-void
.end method

.method public setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V
    .locals 0
    .param p1, "state"    # Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    .prologue
    .line 339
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 297
    :cond_0
    return-void
.end method
