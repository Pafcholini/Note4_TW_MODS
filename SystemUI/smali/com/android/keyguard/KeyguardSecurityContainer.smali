.class public Lcom/android/keyguard/KeyguardSecurityContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityContainer$3;,
        Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_VZW:I = 0xa

.field private static final TAG:Ljava/lang/String; = "KeyguardSecurityView"

.field public static mIsAutoWipe:Z


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mDialogTheme:I

.field private mEnableFallback:Z

.field protected mFailedAttempts:I

.field private mIsBouncing:Z

.field private mIsVerifyUnlockOnly:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSecAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

.field private mSecMontblancLogoView:Lcom/android/keyguard/sec/SecMontblancLogoView;

.field private mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

.field private mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 78
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    .line 79
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    .line 867
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 925
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 1084
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 1085
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 108
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 109
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 111
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialogTheme:I

    .line 112
    new-instance v0, Lcom/android/keyguard/sec/SecMontblancLogoView;

    invoke-direct {v0, p1}, Lcom/android/keyguard/sec/SecMontblancLogoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecMontblancLogoView:Lcom/android/keyguard/sec/SecMontblancLogoView;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecurityContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->reportFailedUnlockAttempt()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSecurityContainer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWipeDialog(I)V

    return-void
.end method

.method private addMontblancLogoViewIfNecessary()V
    .locals 4

    .prologue
    .line 283
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecMontblancLogoView:Lcom/android/keyguard/sec/SecMontblancLogoView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecMontblancLogoView;->isMontblancCoverAndWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    const-string v2, "KeyguardSecurityView"

    const-string v3, "addMontblancLogoViewIfNecessary"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 290
    .local v0, "inflator":Landroid/view/LayoutInflater;
    sget v2, Lcom/android/keyguard/R$layout;->sec_montblanc_logo_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 291
    .local v1, "montblancLogoView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private findSDCard()Landroid/os/storage/StorageVolume;
    .locals 6

    .prologue
    .line 1088
    const-string v3, "KeyguardSecurityView"

    const-string v4, "findSDCard ()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_0

    .line 1090
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 1092
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v3, :cond_2

    .line 1093
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 1094
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v2

    .line 1095
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1096
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1098
    const-string v3, "KeyguardSecurityView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findSDCard ( storageVolumes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    aget-object v3, v2, v0

    .line 1104
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v3

    .line 1095
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v2    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1103
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :cond_2
    const-string v3, "KeyguardSecurityView"

    const-string v4, "findSDCard ( null )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    .locals 3

    .prologue
    .line 844
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 845
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 846
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-eqz v2, :cond_0

    .line 847
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 850
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 844
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 850
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 990
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1029
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 991
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_unlock_view:I

    goto :goto_0

    .line 993
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 994
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_pattern_view_onehand:I

    goto :goto_0

    .line 996
    :cond_0
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_pattern_view:I

    goto :goto_0

    .line 997
    :pswitch_3
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_pin_view:I

    goto :goto_0

    .line 998
    :pswitch_4
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_password_view:I

    goto :goto_0

    .line 999
    :pswitch_5
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_face_unlock_view:I

    goto :goto_0

    .line 1000
    :pswitch_6
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_signature_view:I

    goto :goto_0

    .line 1002
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 1004
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_spass_account_view:I

    goto :goto_0

    .line 1006
    :cond_1
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_account_view:I

    goto :goto_0

    .line 1009
    :pswitch_8
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_2

    .line 1010
    sget v0, Lcom/android/keyguard/R$layout;->msim_keyguard_sim_pin_view:I

    goto :goto_0

    .line 1012
    :cond_2
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_sim_pin_view:I

    goto :goto_0

    .line 1014
    :pswitch_9
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_3

    .line 1015
    sget v0, Lcom/android/keyguard/R$layout;->msim_keyguard_sim_puk_view:I

    goto :goto_0

    .line 1017
    :cond_3
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_sim_puk_view:I

    goto :goto_0

    .line 1018
    :pswitch_a
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_sim_perso_view:I

    goto :goto_0

    .line 1019
    :pswitch_b
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_backup_pin_view:I

    goto :goto_0

    .line 1020
    :pswitch_c
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_recovery_view:I

    goto :goto_0

    .line 1022
    :pswitch_d
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_spass_unlock_view:I

    goto :goto_0

    .line 1023
    :pswitch_e
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_spass_password_view:I

    goto :goto_0

    .line 1024
    :pswitch_f
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_fmm_unlock_view:I

    goto :goto_0

    .line 1025
    :pswitch_10
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_smartcardpin_view:I

    goto :goto_0

    .line 1026
    :pswitch_11
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_carrierlockplus_unlock_view:I

    goto :goto_0

    .line 1027
    :pswitch_12
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_carrierlock_password_view:I

    goto :goto_0

    .line 990
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_d
        :pswitch_3
        :pswitch_b
        :pswitch_e
        :pswitch_4
        :pswitch_10
        :pswitch_f
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_11
        :pswitch_12
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method private getSecurityModeInSignature()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 4

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1039
    const-string v0, "KeyguardSecurityView"

    const-string v1, "Signature lock mode, but failed to unlock within fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSignatureBackupSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1043
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0
.end method

.method private getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;
    .locals 10
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    .line 167
    .local v4, "securityViewIdForMode":I
    const/4 v6, 0x0

    .line 168
    .local v6, "view":Lcom/android/keyguard/KeyguardSecurityView;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v1

    .line 169
    .local v1, "children":I
    const/4 v0, 0x0

    .local v0, "child":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 170
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v4, :cond_2

    .line 171
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "view":Lcom/android/keyguard/KeyguardSecurityView;
    check-cast v6, Lcom/android/keyguard/KeyguardSecurityView;

    .line 175
    .restart local v6    # "view":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v3

    .line 176
    .local v3, "layoutId":I
    if-nez v6, :cond_1

    if-eqz v3, :cond_1

    .line 177
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 178
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const-string v7, "KeyguardSecurityView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inflating id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 180
    .local v5, "v":Landroid/view/View;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v5}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->addView(Landroid/view/View;)V

    .line 181
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsBouncing:Z

    invoke-direct {p0, v5, v7}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityView(Landroid/view/View;Z)V

    move-object v6, v5

    .line 182
    check-cast v6, Lcom/android/keyguard/KeyguardSecurityView;

    .line 185
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-object v6

    .line 169
    .end local v3    # "layoutId":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 946
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 986
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 947
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$id;->keyguard_unlock_view:I

    goto :goto_0

    .line 949
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    sget v0, Lcom/android/keyguard/R$id;->keyguard_pattern_view_onehand:I

    goto :goto_0

    .line 952
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->keyguard_pattern_view:I

    goto :goto_0

    .line 953
    :pswitch_3
    sget v0, Lcom/android/keyguard/R$id;->keyguard_pin_view:I

    goto :goto_0

    .line 954
    :pswitch_4
    sget v0, Lcom/android/keyguard/R$id;->keyguard_password_view:I

    goto :goto_0

    .line 955
    :pswitch_5
    sget v0, Lcom/android/keyguard/R$id;->keyguard_face_unlock_view:I

    goto :goto_0

    .line 956
    :pswitch_6
    sget v0, Lcom/android/keyguard/R$id;->keyguard_signature_view:I

    goto :goto_0

    .line 958
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 960
    sget v0, Lcom/android/keyguard/R$id;->keyguard_spass_account_view:I

    goto :goto_0

    .line 962
    :cond_1
    sget v0, Lcom/android/keyguard/R$id;->keyguard_account_view:I

    goto :goto_0

    .line 965
    :pswitch_8
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_2

    .line 966
    sget v0, Lcom/android/keyguard/R$id;->msim_keyguard_sim_pin_view:I

    goto :goto_0

    .line 968
    :cond_2
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim_pin_view:I

    goto :goto_0

    .line 970
    :pswitch_9
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_3

    .line 971
    sget v0, Lcom/android/keyguard/R$id;->msim_keyguard_sim_puk_view:I

    goto :goto_0

    .line 973
    :cond_3
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim_puk_view:I

    goto :goto_0

    .line 975
    :pswitch_a
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim_perso_view:I

    goto :goto_0

    .line 976
    :pswitch_b
    sget v0, Lcom/android/keyguard/R$id;->keyguard_backup_pin_view:I

    goto :goto_0

    .line 977
    :pswitch_c
    sget v0, Lcom/android/keyguard/R$id;->keyguard_recovery_view:I

    goto :goto_0

    .line 979
    :pswitch_d
    sget v0, Lcom/android/keyguard/R$id;->keyguard_spass_unlock_view:I

    goto :goto_0

    .line 980
    :pswitch_e
    sget v0, Lcom/android/keyguard/R$id;->keyguard_spass_password_view:I

    goto :goto_0

    .line 981
    :pswitch_f
    sget v0, Lcom/android/keyguard/R$id;->keyguard_fmm_unlock_view:I

    goto :goto_0

    .line 982
    :pswitch_10
    sget v0, Lcom/android/keyguard/R$id;->keyguard_smartcardpin_view:I

    goto :goto_0

    .line 983
    :pswitch_11
    sget v0, Lcom/android/keyguard/R$id;->keyguard_carrierlockplus_unlock_view:I

    goto :goto_0

    .line 984
    :pswitch_12
    sget v0, Lcom/android/keyguard/R$id;->keyguard_carrierlock_password_view:I

    goto :goto_0

    .line 946
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_d
        :pswitch_3
        :pswitch_b
        :pswitch_e
        :pswitch_4
        :pswitch_10
        :pswitch_f
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_11
        :pswitch_12
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method private performWipeout(I)V
    .locals 12
    .param p1, "attemptsCount"    # I

    .prologue
    .line 1123
    const-string v9, "KeyguardSecurityView"

    const-string v10, "performWipeout (  )"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const/4 v8, 0x0

    .line 1125
    .local v8, "wipeExcludeExternalStorage":Z
    const-string v6, "com.android.email"

    .line 1126
    .local v6, "pkg":Ljava/lang/String;
    const-string v0, "com.android.email.SecurityPolicy$PolicyAdmin"

    .line 1127
    .local v0, "cls":Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    .local v4, "mAdminName":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 1129
    .local v5, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v5, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v1

    .line 1130
    .local v1, "easCount":I
    if-eqz v1, :cond_0

    if-le v1, p1, :cond_1

    .line 1131
    :cond_0
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const-string v10, "enterprise_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1133
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded()Z

    move-result v8

    .line 1136
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->findSDCard()Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 1137
    .local v7, "sdcard":Landroid/os/storage/StorageVolume;
    sget v9, Lcom/android/keyguard/R$string;->keyguard_progress_erasing_all:I

    invoke-virtual {p0, v9}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateProgressDialog(I)V

    .line 1138
    if-eqz v7, :cond_2

    if-nez v8, :cond_2

    .line 1139
    const-string v9, "KeyguardSecurityView"

    const-string v10, "performWipeout ( ExternalStorageFormatter.FORMAT_AND_FACTORY_RESET )"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1141
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "storage_volume"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1142
    const-string v9, "always_reset"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1143
    sget-object v9, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1144
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1153
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1147
    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isATTFeature()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1148
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1150
    :cond_3
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private removeSubUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1157
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    :goto_0
    return-void

    .line 1160
    :catch_0
    move-exception v0

    .line 1161
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "KeyguardSecurityView"

    const-string v2, "KeyguardHostView - exception in removeSubuser"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reportFailedUnlockAttempt()V
    .locals 18

    .prologue
    .line 486
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    .line 487
    .local v9, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    const/4 v4, 0x0

    .line 489
    .local v4, "failedAttempts":I
    const-string v15, "KeyguardSecurityView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "reportFailedPatternAttempt: #"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v15}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v8

    .line 492
    .local v8, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v8, v15, :cond_9

    const/4 v13, 0x1

    .line 493
    .local v13, "usingPattern":Z
    :goto_0
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v8, v15, :cond_a

    const/4 v14, 0x1

    .line 494
    .local v14, "usingSPass":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v16, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_b

    const/4 v7, 0x1

    .line 495
    .local v7, "isSelectedSPass":Z
    :goto_2
    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v16, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_c

    :cond_0
    const/4 v2, 0x1

    .line 497
    .local v2, "exceptAutowipe":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v5

    .line 499
    .local v5, "failedAttemptsBeforeWipe":I
    if-lez v5, :cond_d

    const/4 v6, 0x1

    .line 501
    .local v6, "isITPolicyEnabled":Z
    :goto_4
    if-eqz v6, :cond_f

    .line 502
    if-eqz v7, :cond_e

    .line 505
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v15

    add-int/lit8 v4, v15, 0x1

    .line 506
    const/4 v5, 0x0

    .line 520
    :goto_5
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    .line 521
    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_1

    if-nez v2, :cond_1

    if-gtz v5, :cond_1

    .line 522
    const/16 v5, 0xa

    .line 525
    :cond_1
    const/16 v3, 0xf

    .line 528
    .local v3, "failedAttemptWarning":I
    if-lez v5, :cond_12

    sub-int v10, v5, v4

    .line 533
    .local v10, "remainingBeforeWipe":I
    :goto_6
    const-string v15, "KeyguardSecurityView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "reportFailedUnlockAttempt( mIsAutoWipe = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v17, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " , IT Policy = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " )"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v15, "KeyguardSecurityView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "reportFailedUnlockAttempt( failedAttempts: # "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " , failedAttemptsBeforeWipe: #"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", remainingBeforeWipe = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " )"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v12, 0x0

    .line 541
    .local v12, "showTimeout":Z
    sget-boolean v11, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    .line 542
    .local v11, "showAutowipeDialog":Z
    const/4 v15, 0x5

    if-lt v10, v15, :cond_2

    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_19

    if-nez v2, :cond_19

    .line 551
    :cond_2
    if-lez v10, :cond_15

    .line 552
    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_14

    .line 553
    rem-int/lit8 v15, v4, 0x5

    if-nez v15, :cond_13

    const/4 v12, 0x1

    .line 555
    :goto_7
    const-string v15, "KeyguardSecurityView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "reportFailedUnlockAttempt(showTimeout= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_3
    :goto_8
    if-eqz v6, :cond_4

    if-nez v7, :cond_5

    :cond_4
    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_25

    if-eqz v2, :cond_25

    .line 660
    :cond_5
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    .line 661
    const/16 v15, 0x14

    if-lt v4, v15, :cond_6

    .line 662
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 669
    :cond_6
    :goto_9
    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_7

    if-eqz v11, :cond_7

    .line 670
    if-nez v7, :cond_26

    const/4 v15, 0x1

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10, v2, v15}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWarningAtAutoWipeDialog(IIZZ)V

    .line 672
    :cond_7
    if-eqz v12, :cond_8

    .line 673
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showTimeoutDialog()V

    .line 675
    :cond_8
    return-void

    .line 492
    .end local v2    # "exceptAutowipe":Z
    .end local v3    # "failedAttemptWarning":I
    .end local v5    # "failedAttemptsBeforeWipe":I
    .end local v6    # "isITPolicyEnabled":Z
    .end local v7    # "isSelectedSPass":Z
    .end local v10    # "remainingBeforeWipe":I
    .end local v11    # "showAutowipeDialog":Z
    .end local v12    # "showTimeout":Z
    .end local v13    # "usingPattern":Z
    .end local v14    # "usingSPass":Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 493
    .restart local v13    # "usingPattern":Z
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 494
    .restart local v14    # "usingSPass":Z
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 495
    .restart local v7    # "isSelectedSPass":Z
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 499
    .restart local v2    # "exceptAutowipe":Z
    .restart local v5    # "failedAttemptsBeforeWipe":I
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 508
    .restart local v6    # "isITPolicyEnabled":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v15

    invoke-virtual {v9, v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v15

    add-int/lit8 v4, v15, 0x1

    goto/16 :goto_5

    .line 510
    :cond_f
    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_11

    .line 511
    if-eqz v2, :cond_10

    .line 512
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v15

    add-int/lit8 v4, v15, 0x1

    .line 513
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 515
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v15

    invoke-virtual {v9, v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v15

    add-int/lit8 v4, v15, 0x1

    goto/16 :goto_5

    .line 518
    :cond_11
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v15

    add-int/lit8 v4, v15, 0x1

    goto/16 :goto_5

    .line 528
    .restart local v3    # "failedAttemptWarning":I
    :cond_12
    const v10, 0x7fffffff

    goto/16 :goto_6

    .line 553
    .restart local v10    # "remainingBeforeWipe":I
    .restart local v11    # "showAutowipeDialog":Z
    .restart local v12    # "showTimeout":Z
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 557
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtWipeDialog(II)V

    goto :goto_8

    .line 560
    :cond_15
    const/4 v11, 0x0

    .line 561
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordRecoverable()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 562
    const-string v15, "KeyguardSecurityView"

    const-string v16, "Too many unlock attempts; device will be display recovery screen!"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->recoverPassword()V

    .line 564
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->setRecoveryScreenLocked(Z)V

    .line 565
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_8

    .line 569
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    .line 571
    .local v1, "currentUserId":I
    if-nez v1, :cond_18

    .line 573
    const-string v15, "KeyguardSecurityView"

    const-string v16, "Too many unlock attempts; device will be wiped!"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_17

    .line 575
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/keyguard/KeyguardSecurityContainer;->performWipeout(I)V

    goto/16 :goto_8

    .line 577
    :cond_17
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWipeDialog(I)V

    goto/16 :goto_8

    .line 580
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->removeSubUser(I)V

    goto/16 :goto_8

    .line 585
    .end local v1    # "currentUserId":I
    :cond_19
    rem-int/lit8 v15, v4, 0x5

    if-nez v15, :cond_1b

    const/4 v12, 0x1

    .line 587
    :goto_b
    if-eqz v13, :cond_1a

    .line 588
    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_1c

    .line 589
    if-eqz v4, :cond_1a

    rem-int/lit8 v15, v4, 0x5

    if-nez v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 591
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 592
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 593
    const/4 v12, 0x0

    .line 623
    :cond_1a
    :goto_c
    if-eqz v14, :cond_3

    .line 624
    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_21

    .line 625
    if-eqz v4, :cond_3

    rem-int/lit8 v15, v4, 0x5

    if-nez v15, :cond_3

    .line 627
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 628
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAlternativePasswordBegin()V

    .line 629
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 630
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 585
    :cond_1b
    const/4 v12, 0x0

    goto :goto_b

    .line 596
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mEnableFallback:Z

    if-eqz v15, :cond_1d

    .line 597
    const/16 v15, 0xf

    if-ne v4, v15, :cond_1f

    .line 598
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtAccountLoginDialog()V

    .line 599
    const/4 v12, 0x0

    .line 607
    :cond_1d
    :goto_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 608
    if-eqz v4, :cond_1e

    rem-int/lit8 v15, v4, 0x5

    if-nez v15, :cond_1e

    .line 610
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    .line 612
    :cond_1e
    const/16 v15, 0xf

    if-ne v4, v15, :cond_20

    .line 613
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtBackupPininDialog()V

    .line 614
    const/4 v12, 0x0

    goto :goto_c

    .line 600
    :cond_1f
    const/16 v15, 0x14

    if-lt v4, v15, :cond_1d

    .line 601
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 602
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 604
    const/4 v12, 0x0

    goto :goto_d

    .line 615
    :cond_20
    const/16 v15, 0x14

    if-lt v4, v15, :cond_1a

    .line 616
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 618
    const/4 v12, 0x0

    goto :goto_c

    .line 632
    :cond_21
    if-eqz v6, :cond_22

    .line 633
    const/4 v15, 0x5

    if-ne v4, v15, :cond_3

    .line 634
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 635
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAlternativePasswordBegin()V

    .line 636
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 638
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 641
    :cond_22
    if-eqz v4, :cond_23

    rem-int/lit8 v15, v4, 0x5

    if-nez v15, :cond_23

    .line 643
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    .line 645
    :cond_23
    const/16 v15, 0xf

    if-ne v4, v15, :cond_24

    .line 646
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtAlternativePasswordinDialog()V

    .line 647
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 648
    :cond_24
    const/16 v15, 0x14

    if-lt v4, v15, :cond_3

    .line 649
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 650
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAlternativePasswordBegin()V

    .line 651
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 653
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 665
    :cond_25
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 666
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    goto/16 :goto_9

    .line 670
    :cond_26
    const/4 v15, 0x0

    goto/16 :goto_a
.end method

.method private showAlmostAtAccountLoginDialog()V
    .locals 8

    .prologue
    .line 467
    const/16 v2, 0x1e

    .line 468
    .local v2, "timeoutInSeconds":I
    const/16 v0, 0xf

    .line 470
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_login:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "message":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method private showAlmostAtAlternativePasswordinDialog()V
    .locals 9

    .prologue
    .line 476
    const/16 v2, 0x1e

    .line 477
    .local v2, "timeoutInSeconds":I
    const/16 v0, 0xf

    .line 479
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->fail_attempt_unlock_popup_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_spass:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/16 v8, 0x1e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "message":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method private showAlmostAtBackupPininDialog()V
    .locals 9

    .prologue
    .line 457
    const/16 v2, 0x1e

    .line 458
    .local v2, "timeoutInSeconds":I
    const/16 v0, 0xf

    .line 460
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->fail_attempt_unlock_popup_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_pattern:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/16 v8, 0x1e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "message":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method private showAlmostAtWipeDialog(II)V
    .locals 7
    .param p1, "attempts"    # I
    .param p2, "remaining"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "message":Ljava/lang/String;
    if-ne p1, v5, :cond_0

    .line 397
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_1_failed_attempt_almost_at_wipe:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 403
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_wipe:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 702
    const-string v1, "KeyguardSecurityView"

    const-string v2, "showBackupSecurity()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getBackupSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 705
    .local v0, "backup":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_1

    .line 706
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 713
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 714
    return-void

    .line 707
    :cond_1
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_2

    .line 708
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 709
    :cond_2
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_0

    .line 710
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 301
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialogTheme:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->ok:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 306
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 307
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 309
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 310
    return-void
.end method

.method private showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 8
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 793
    const-string v5, "KeyguardSecurityView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showSecurityScreen("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v5, :cond_1

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v3

    .line 804
    .local v3, "oldView":Lcom/android/keyguard/KeyguardSecurityView;
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v2

    .line 805
    .local v2, "newView":Lcom/android/keyguard/KeyguardSecurityView;
    iput-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    .line 807
    if-eqz v3, :cond_2

    .line 808
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 809
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v5}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 811
    :cond_2
    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v5, :cond_3

    .line 812
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 813
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2, v5}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 817
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 819
    .local v0, "childCount":I
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    .line 820
    .local v4, "securityViewIdForMode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 821
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v4, :cond_6

    .line 822
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setDisplayedChild(I)V

    .line 827
    :cond_4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 828
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v5, :cond_7

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    :goto_2
    invoke-interface {v6, p1, v5}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 830
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    if-eqz v5, :cond_0

    .line 831
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    instance-of v5, v5, Lcom/android/keyguard/sec/KeyguardUnlockView;

    if-eqz v5, :cond_5

    .line 832
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    check-cast v5, Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/KeyguardUnlockView;->setAttributionInfoView(Landroid/view/View;)V

    .line 836
    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    instance-of v5, v5, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    if-eqz v5, :cond_0

    .line 837
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    check-cast v5, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setAttributionInfoView(Landroid/view/View;)V

    goto :goto_0

    .line 820
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 828
    :cond_7
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private showTimeoutDialog()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 313
    const/16 v4, 0x1e

    .line 314
    .local v4, "timeoutInSeconds":I
    const/4 v1, 0x0

    .line 315
    .local v1, "messageId":I
    const/4 v5, 0x0

    .line 317
    .local v5, "useAutowipeMessage":Z
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    .line 319
    .local v3, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v6, Lcom/android/keyguard/KeyguardSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 377
    :goto_0
    if-eqz v1, :cond_0

    .line 379
    if-eqz v5, :cond_5

    .line 380
    iget v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    rsub-int/lit8 v2, v6, 0xa

    .line 381
    .local v2, "remaining":I
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .end local v2    # "remaining":I
    .local v0, "message":Ljava/lang/String;
    :goto_1
    const/4 v6, 0x0

    invoke-direct {p0, v6, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void

    .line 321
    :pswitch_0
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_pattern_attempts_dialog_message:I

    .line 322
    goto :goto_0

    .line 324
    :pswitch_1
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_spass_attempts_dialog_message:I

    .line 325
    goto :goto_0

    .line 327
    :pswitch_2
    sget-boolean v6, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v6, :cond_1

    .line 328
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_pin_attempts_dialog_message_with_auto_wipe:I

    .line 329
    const/4 v5, 0x1

    goto :goto_0

    .line 331
    :cond_1
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_pin_attempts_dialog_message:I

    .line 333
    goto :goto_0

    .line 335
    :pswitch_3
    sget-boolean v6, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v6, :cond_2

    .line 336
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_backup_pin_attempts_dialog_message_with_auto_wipe:I

    .line 337
    const/4 v5, 0x1

    goto :goto_0

    .line 339
    :cond_2
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_pattern_attempts_dialog_message:I

    .line 341
    goto :goto_0

    .line 343
    :pswitch_4
    sget-boolean v6, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v6, :cond_3

    .line 344
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_backup_password_attempts_dialog_message_with_auto_wipe:I

    .line 345
    const/4 v5, 0x1

    goto :goto_0

    .line 347
    :cond_3
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_spass_attempts_dialog_message:I

    .line 349
    goto :goto_0

    .line 351
    :pswitch_5
    sget-boolean v6, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v6, :cond_4

    .line 352
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_password_attempts_dialog_message_with_auto_wipe:I

    .line 353
    const/4 v5, 0x1

    goto :goto_0

    .line 355
    :cond_4
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_password_attempts_dialog_message:I

    .line 357
    goto :goto_0

    .line 361
    :pswitch_6
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_pin_attempts_dialog_message:I

    .line 362
    goto :goto_0

    .line 365
    :pswitch_7
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_signature_attempts_dialog_message:I

    .line 366
    goto :goto_0

    .line 386
    :cond_5
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-array v7, v11, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_1

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private showWarningAtAutoWipeDialog(IIZZ)V
    .locals 6
    .param p1, "attempts"    # I
    .param p2, "remaining"    # I
    .param p3, "needbackup"    # Z
    .param p4, "usebackuppin"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, "message":Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 429
    const/4 v1, 0x5

    if-ne v1, p1, :cond_0

    .line 430
    if-eqz p4, :cond_2

    .line 431
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_5_attempts_to_show_backup_pin_with_auto_wipe:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 452
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 453
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_1
    return-void

    .line 436
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_5_attempts_to_show_backup_password_with_auto_wipe:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 444
    :cond_3
    if-ne p2, v3, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_4

    .line 446
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_remained_1_attempts_with_auto_wipe:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 448
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_remained_1_attempts_with_auto_wipe_subuser:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showWipeDialog(I)V
    .locals 1
    .param p1, "attempts"    # I

    .prologue
    .line 407
    move v0, p1

    .line 423
    .local v0, "attemptsCount":I
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->performWipeout(I)V

    .line 424
    return-void
.end method

.method private updateSecurityView(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isBouncing"    # Z

    .prologue
    const/4 v3, 0x0

    .line 189
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsBouncing:Z

    .line 190
    instance-of v2, p1, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 191
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    .line 192
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 193
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 194
    if-eqz p2, :cond_1

    .line 195
    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityView;->showBouncer(I)V

    .line 199
    :goto_0
    sget v2, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;

    .line 200
    .local v1, "secview":Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;
    if-eqz v1, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 206
    .end local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    .end local v1    # "secview":Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;
    :cond_0
    :goto_1
    return-void

    .line 197
    .restart local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_1
    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityView;->hideBouncer(I)V

    goto :goto_0

    .line 204
    .end local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_2
    const-string v2, "KeyguardSecurityView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a KeyguardSecurityView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addAttributionInfoViewIfNecessary()V
    .locals 3

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isRichLockEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 273
    :cond_0
    const-string v1, "KeyguardSecurityView"

    const-string v2, "addAttributionInfoViewIfNecessary"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 275
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 277
    new-instance v1, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    .line 278
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v1, p0, v2}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 279
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public announceCurrentSecurityMethod()V
    .locals 2

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 160
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 163
    :cond_0
    return-void
.end method

.method public dismiss(Z)V
    .locals 1
    .param p1, "authenticated"    # Z

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 1057
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1168
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x7f

    if-eq v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x7e

    if-eq v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x57

    if-eq v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x58

    if-eq v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x59

    if-eq v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_3

    .line 1178
    const/4 v0, 0x0

    .line 1179
    .local v0, "callDismiss":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InputDevice;->isExternal()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1180
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1181
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    const-string v6, "KeyguardSecurityView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchKeyEvent : getDevice is null!! or isExternal ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InputDevice;->isExternal()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1183
    const-string v6, "KeyguardSecurityView"

    const-string v7, "dispatchKeyEvent : blueTooth"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const/4 v0, 0x1

    .line 1188
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sidesync_source_connect"

    invoke-static {v6, v7, v4, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_4

    move v3, v4

    .line 1189
    .local v3, "isSideSync":Z
    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "KMS_SERVICE_CONNECTED"

    invoke-static {v6, v7, v4, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v5, :cond_5

    move v2, v5

    .line 1190
    .local v2, "isKms":Z
    :goto_1
    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    .line 1191
    :cond_1
    const-string v5, "KeyguardSecurityView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchKeyEvent : isSideSync ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isKms = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const/4 v0, 0x1

    .line 1195
    :cond_2
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v5, :cond_3

    .line 1196
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 1200
    .end local v0    # "callDismiss":Z
    .end local v2    # "isKms":Z
    .end local v3    # "isSideSync":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .restart local v0    # "callDismiss":Z
    :cond_4
    move v3, v5

    .line 1188
    goto :goto_0

    .restart local v3    # "isSideSync":Z
    :cond_5
    move v2, v4

    .line 1189
    goto :goto_1
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSecuritySelection()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    .line 862
    .local v0, "flipper":Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->hideBouncer(I)V

    .line 865
    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->needsInput()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 209
    sget v7, Lcom/android/keyguard/R$id;->view_flipper:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardSecurityContainer;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iput-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 210
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v10, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v10}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 213
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    .line 214
    .local v6, "userId":I
    const/4 v2, 0x0

    .line 215
    .local v2, "isEASAppliedOnCurrentLockscreen":Z
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v6}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v1

    .line 217
    .local v1, "failedAttemptsBeforeWipe":I
    if-lez v1, :cond_4

    move v3, v8

    .line 219
    .local v3, "isITPolicyEnabled":Z
    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAutoWipeFeature()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v3, :cond_6

    .line 222
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "auto_swipe_main_user"

    invoke-static {v7, v10, v9, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v8, :cond_5

    :goto_1
    sput-boolean v8, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    .line 227
    :goto_2
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v5

    .line 228
    .local v5, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    if-eqz v3, :cond_7

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v7, :cond_0

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v7, :cond_0

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v7, :cond_0

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v7, :cond_0

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v7, :cond_7

    .line 234
    :cond_0
    const/4 v2, 0x1

    .line 238
    :goto_3
    const-string v7, "KeyguardSecurityView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AUTO_WIPE = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , IT Policy = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "failedAttempts":I
    if-nez v2, :cond_1

    sget-boolean v7, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v7, :cond_9

    .line 242
    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v0

    .line 244
    const-string v7, "KeyguardSecurityView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportFailedPatternAttempt: #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-boolean v7, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v7, :cond_2

    if-gtz v1, :cond_2

    .line 247
    const/16 v1, 0xa

    .line 250
    :cond_2
    if-lez v1, :cond_8

    sub-int v4, v1, v0

    .line 254
    .local v4, "remainingBeforeWipe":I
    :goto_4
    if-gtz v4, :cond_3

    .line 256
    const-string v7, "KeyguardSecurityView"

    const-string v8, "Too many unlock attempts; device will be wiped!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWipeDialog(I)V

    .line 262
    .end local v4    # "remainingBeforeWipe":I
    :cond_3
    :goto_5
    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    .line 263
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->addAttributionInfoViewIfNecessary()V

    .line 265
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->addMontblancLogoViewIfNecessary()V

    .line 266
    return-void

    .end local v0    # "failedAttempts":I
    .end local v3    # "isITPolicyEnabled":Z
    .end local v5    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_4
    move v3, v9

    .line 217
    goto/16 :goto_0

    .restart local v3    # "isITPolicyEnabled":Z
    :cond_5
    move v8, v9

    .line 222
    goto/16 :goto_1

    .line 225
    :cond_6
    sput-boolean v9, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    goto/16 :goto_2

    .line 236
    .restart local v5    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 250
    .restart local v0    # "failedAttempts":I
    :cond_8
    const v4, 0x7fffffff

    goto :goto_4

    .line 260
    :cond_9
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    goto :goto_5
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 133
    return-void
.end method

.method public onResume(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 125
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->reset()V

    .line 1071
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 1066
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 297
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 298
    return-void
.end method

.method public setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .line 117
    return-void
.end method

.method public showBouncer(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 854
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    .line 855
    .local v0, "flipper":Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->showBouncer(I)V

    .line 858
    :cond_0
    return-void
.end method

.method showNextSecurityScreenOrFinish(Z)Z
    .locals 6
    .param p1, "authenticated"    # Z

    .prologue
    const/4 v5, 0x0

    .line 723
    const-string v2, "KeyguardSecurityView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showNextSecurityScreenOrFinish("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, "finish":Z
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 726
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 727
    .local v1, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v1, :cond_0

    .line 728
    const/4 v0, 0x1

    .line 780
    .end local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 781
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->finish()V

    .line 783
    :cond_1
    return v0

    .line 730
    :cond_2
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_4

    .line 731
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 733
    .restart local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 734
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v1, :cond_3

    .line 735
    const/4 v0, 0x1

    goto :goto_0

    .line 737
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 739
    .end local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_4
    if-eqz p1, :cond_7

    .line 740
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 773
    :pswitch_0
    const-string v2, "KeyguardSecurityView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad security screen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fail safe"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 755
    :pswitch_1
    const/4 v0, 0x1

    .line 756
    goto :goto_0

    .line 762
    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 763
    .restart local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_6

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 766
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 768
    :cond_6
    const/4 v0, 0x1

    .line 770
    goto :goto_0

    .line 778
    .end local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 740
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method showPrimarySecurityScreen(Z)V
    .locals 4
    .param p1, "turningOff"    # Z

    .prologue
    .line 683
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 684
    .local v0, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    const-string v1, "KeyguardSecurityView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 686
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityModeInSignature()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 693
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 694
    return-void

    .line 687
    :cond_1
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    goto :goto_0
.end method

.method public showUsabilityHint()V
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->showUsabilityHint()V

    .line 1081
    return-void
.end method

.method public startAppearAnimation()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->startAppearAnimation()V

    .line 140
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "onFinishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public updateProgressDialog(I)V
    .locals 3
    .param p1, "messageId"    # I

    .prologue
    .line 1108
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v0, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1110
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1111
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1112
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1113
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1114
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1119
    :cond_1
    return-void
.end method

.method updateSecurityViews(Z)V
    .locals 3
    .param p1, "isBouncing"    # Z

    .prologue
    .line 152
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 153
    .local v0, "children":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 154
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityView(Landroid/view/View;Z)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public verifyUnlock()V
    .locals 1

    .prologue
    .line 1047
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsVerifyUnlockOnly:Z

    .line 1048
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1049
    return-void
.end method
