.class public abstract Lcom/android/keyguard/KeyguardAbsKeyInputView;
.super Landroid/widget/LinearLayout;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static final BOUNCER_FRAME_BACKGROUND_COLOR:I = 0x66ffffff

.field protected static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3


# instance fields
.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field protected mBouncerKMA:Landroid/view/View;

.field protected mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field protected mEcaView:Landroid/view/View;

.field protected mEnableHaptics:Z

.field mImmAbs:Landroid/view/inputmethod/InputMethodManager;

.field private mKeyguardBouncerFrameView:Landroid/view/View;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 90
    const-string v0, "enterprise_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public disableDevicePermanently()V
    .locals 3

    .prologue
    .line 375
    const-string v0, "PasswordUnlockScreen"

    const-string v1, "disableDevicePermanently start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->device_disabled:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 378
    return-void
.end method

.method public doHapticKeyClick()V
    .locals 2

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    .line 296
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->performHapticFeedback(II)Z

    .line 300
    :cond_0
    return-void
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public getFailedAttemptMessage(II)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "resid"    # I
    .param p2, "attempts"    # I

    .prologue
    const/4 v5, 0x1

    .line 383
    sget-boolean v2, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v2, :cond_2

    .line 384
    rsub-int/lit8 v1, p2, 0xa

    .line 385
    .local v1, "remaining":I
    if-ne v1, v5, :cond_0

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    .end local v1    # "remaining":I
    .local v0, "message":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 388
    .end local v0    # "message":Ljava/lang/CharSequence;
    .restart local v1    # "remaining":I
    :cond_0
    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    if-le v1, v5, :cond_1

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/CharSequence;
    goto :goto_0

    .line 393
    .end local v0    # "message":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/CharSequence;
    goto :goto_0

    .line 396
    .end local v0    # "message":Ljava/lang/CharSequence;
    .end local v1    # "remaining":I
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method protected abstract getPasswordText()Ljava/lang/String;
.end method

.method protected abstract getPasswordTextViewId()I
.end method

.method protected getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 152
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 241
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 245
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 262
    return-void
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showHideBouncerKeyguardMessageArea(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 312
    return-void
.end method

.method public isDeviceDisabledForMaxFailedAttempt()Z
    .locals 6

    .prologue
    .line 357
    const/4 v1, 0x0

    .line 358
    .local v1, "isDeviceDisableForMaxFailedAttempt":Z
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_0

    .line 359
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v2

    .line 360
    .local v2, "maxNumFailedAttemptForDisable":I
    const-string v3, "PasswordUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "max failed attempt for device disable :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-lez v2, :cond_0

    .line 363
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    .line 364
    .local v0, "curNumFailedAttempts":I
    const-string v3, "PasswordUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current failed attempt for device  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    .line 369
    .end local v0    # "curNumFailedAttempts":I
    .end local v2    # "maxNumFailedAttemptForDisable":I
    :cond_0
    :goto_0
    const-string v3, "PasswordUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return v1

    .line 365
    .restart local v0    # "curNumFailedAttempts":I
    .restart local v2    # "maxNumFailedAttemptForDisable":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 133
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 134
    sget v0, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    .line 135
    sget v0, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    const v1, 0x66ffffff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mImmAbs:Landroid/view/inputmethod/InputMethodManager;

    .line 143
    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area_bouncer:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerKMA:Landroid/view/View;

    .line 144
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 281
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 286
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 107
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    .line 110
    .local v2, "lDeviceDisableForMaxFailedAttempt":Z
    if-nez v2, :cond_1

    .line 111
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 112
    .local v0, "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->shouldLockout(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    .line 120
    .end local v0    # "deadline":J
    :goto_0
    return-void

    .line 115
    .restart local v0    # "deadline":J
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    goto :goto_0

    .line 118
    .end local v0    # "deadline":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    goto :goto_0
.end method

.method protected abstract resetPasswordText(Z)V
.end method

.method protected abstract resetState()V
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 98
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 102
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    .line 103
    return-void
.end method

.method protected abstract setPasswordEntryEnabled(Z)V
.end method

.method protected shouldLockout(J)Z
    .locals 3
    .param p1, "deadline"    # J

    .prologue
    .line 124
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncerWithScaleAnimation(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showHideBouncerKeyguardMessageArea(Z)V

    .line 306
    return-void
.end method

.method public showHideBouncerKeyguardMessageArea(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerKMA:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerKMA:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 317
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerKMA:Landroid/view/View;

    :goto_1
    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 319
    :cond_0
    return-void

    .line 316
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 317
    goto :goto_1
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 18

    .prologue
    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, "entry":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15, v6}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 159
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v15}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v15

    if-lez v15, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    .line 162
    .local v10, "mDPM":Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v13

    .line 163
    .local v13, "quality":I
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v12

    .line 164
    .local v12, "minLength":I
    invoke-virtual {v10, v13}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v11

    .line 166
    .local v11, "maxLength":I
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v8, "it":Landroid/content/Intent;
    const-string v15, "com.android.settings"

    const-string v16, "com.android.settings.ChooseLockPassword"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v15, "lockscreen.password_type"

    invoke-virtual {v8, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    const-string v15, "lockscreen.password_min"

    invoke-virtual {v8, v15, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    const-string v15, "lockscreen.password_max"

    invoke-virtual {v8, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    const-string v15, "lockscreen.password_old"

    invoke-virtual {v8, v15, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v15, "confirm_credentials"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    const/high16 v15, 0x10000000

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    const/high16 v15, 0x400000

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    const/high16 v15, 0x800000

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v15

    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-virtual {v15, v8, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 177
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 180
    .end local v8    # "it":Landroid/content/Intent;
    .end local v10    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v11    # "maxLength":I
    .end local v12    # "minLength":I
    .end local v13    # "quality":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mImmAbs:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 181
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 182
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 185
    new-instance v3, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v15}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 187
    .local v3, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v15

    if-nez v15, :cond_1

    .line 188
    invoke-virtual {v3, v6}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 193
    :cond_1
    new-instance v9, Landroid/lsm/LockedStatePasswordWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v9, v15}, Landroid/lsm/LockedStatePasswordWrapper;-><init>(Landroid/content/Context;)V

    .line 195
    .local v9, "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    invoke-virtual {v9}, Landroid/lsm/LockedStatePasswordWrapper;->getCurrentUserID()I

    move-result v15

    if-nez v15, :cond_2

    .line 196
    invoke-virtual {v9, v6}, Landroid/lsm/LockedStatePasswordWrapper;->setPassword(Ljava/lang/String;)I

    .line 228
    .end local v3    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v9    # "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    :cond_2
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->clear()V

    .line 229
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 230
    return-void

    .line 201
    :cond_3
    const/4 v2, 0x0

    .line 202
    .local v2, "attempts":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-le v15, v0, :cond_7

    .line 205
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 206
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v16

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v2

    .line 207
    rsub-int/lit8 v14, v2, 0xa

    .line 209
    .local v14, "remaining":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v15

    if-nez v15, :cond_6

    .line 210
    rem-int/lit8 v15, v2, 0x5

    if-nez v15, :cond_5

    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_4

    if-eqz v14, :cond_5

    .line 212
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v4

    .line 213
    .local v4, "deadline":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    .line 215
    new-instance v7, Landroid/content/Intent;

    const-string v15, "android.intent.action.PATTERN_LOCK_FAIL"

    invoke-direct {v7, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 225
    .end local v4    # "deadline":J
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v14    # "remaining":I
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v15 .. v17}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 219
    .restart local v14    # "remaining":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    goto :goto_1

    .line 223
    .end local v14    # "remaining":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v16

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v2

    goto :goto_1
.end method

.method protected verifyRecoveryPasswordAndUnlock()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 326
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "entry":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 328
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->setRecoveryScreenLocked(Z)V

    .line 330
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 331
    .local v2, "mDPM":Landroid/app/admin/DevicePolicyManager;
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    .line 332
    .local v5, "quality":I
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v4

    .line 333
    .local v4, "minLength":I
    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v3

    .line 334
    .local v3, "maxLength":I
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v1, "it":Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.ChooseLockPassword"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v6, "lockscreen.password_type"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    const-string v6, "lockscreen.password_min"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const-string v6, "lockscreen.password_max"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const-string v6, "lockscreen.password_old"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v6, "confirm_credentials"

    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 341
    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 342
    const/high16 v6, 0x400000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 343
    const/high16 v6, 0x800000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 345
    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 347
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 348
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 353
    .end local v1    # "it":Landroid/content/Intent;
    .end local v2    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "maxLength":I
    .end local v4    # "minLength":I
    .end local v5    # "quality":I
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->showWipeDialog(I)V

    goto :goto_0
.end method
