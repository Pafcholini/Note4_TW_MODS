.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;
.super Ljava/lang/Object;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountIndex:I

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/accounts/AccountManager;)V
    .locals 3
    .param p2, "accountManager"    # Landroid/accounts/AccountManager;

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1352
    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    .line 1353
    const-string v0, "com.google"

    new-instance v1, Landroid/os/UserHandle;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    .line 1355
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/accounts/AccountManager;Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
    .param p2, "x1"    # Landroid/accounts/AccountManager;
    .param p3, "x2"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;

    .prologue
    .line 1346
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/accounts/AccountManager;)V

    return-void
.end method

.method private next()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1360
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEnableFallback:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1365
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    aget-object v1, v1, v3

    new-instance v6, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1377
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1378
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1379
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEnableFallback:Z

    .line 1380
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateSPassButtonArea()V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
    :cond_0
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    .line 1390
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->next()V

    .line 1392
    .end local v0    # "result":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1382
    :catch_0
    move-exception v1

    .line 1389
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    .line 1390
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->next()V

    goto :goto_0

    .line 1384
    :catch_1
    move-exception v1

    .line 1389
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    .line 1390
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->next()V

    goto :goto_0

    .line 1386
    :catch_2
    move-exception v1

    .line 1389
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    .line 1390
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->next()V

    goto :goto_0

    .line 1389
    :catchall_0
    move-exception v1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    .line 1390
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->next()V

    throw v1
.end method

.method public start()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1370
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEnableFallback:Z

    .line 1371
    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    .line 1372
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->next()V

    .line 1373
    return-void
.end method
