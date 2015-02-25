.class public Landroid/lsm/LockedStatePasswordWrapper;
.super Ljava/lang/Object;
.source "LockedStatePasswordWrapper.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "LSManager"

.field private static final TAG:Ljava/lang/String; = "LSManager.LockedStatePasswordWrapper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private m_API:Landroid/os/storage/sensitive/SDServiceAPI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v1, p0, Landroid/lsm/LockedStatePasswordWrapper;->mContext:Landroid/content/Context;

    .line 20
    iput-object v1, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    .line 24
    iput-object p1, p0, Landroid/lsm/LockedStatePasswordWrapper;->mContext:Landroid/content/Context;

    .line 25
    const-string v1, "LSManager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 27
    .local v0, "m_obj":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 28
    const-string v1, "LSManager.LockedStatePasswordWrapper"

    const-string v2, "Unable to get LSManager service..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    invoke-static {v0}, Landroid/os/storage/sensitive/SDServiceAPI$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/sensitive/SDServiceAPI;

    move-result-object v1

    iput-object v1, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    .line 31
    iget-object v1, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    if-nez v1, :cond_1

    .line 32
    const-string v1, "LSManager.LockedStatePasswordWrapper"

    const-string v2, "Unable to get SDServiceAPI instance."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentUserID()I
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/lsm/LockedStatePasswordWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    return v1
.end method

.method public setLocked()I
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    if-nez v1, :cond_0

    .line 66
    const/4 v1, -0x1

    .line 74
    :goto_0
    return v1

    .line 69
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    invoke-interface {v1}, Landroid/os/storage/sensitive/SDServiceAPI;->setLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LSManager.LockedStatePasswordWrapper"

    const-string v2, "Unable to communicate with LSManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setPassword(Ljava/lang/String;)I
    .locals 6
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 44
    iget-object v4, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    if-nez v4, :cond_1

    .line 45
    const/4 v3, -0x1

    .line 60
    :cond_0
    :goto_0
    return v3

    .line 48
    :cond_1
    if-eqz p1, :cond_2

    .line 49
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 50
    .local v0, "bytes":[B
    iget-object v4, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    invoke-interface {v4, v0}, Landroid/os/storage/sensitive/SDServiceAPI;->setPassword([B)V

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 52
    const/4 v4, 0x0

    aput-byte v4, v0, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 54
    .end local v0    # "bytes":[B
    .end local v1    # "i":I
    :cond_2
    iget-object v4, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    const/4 v5, 0x0

    new-array v5, v5, [B

    invoke-interface {v4, v5}, Landroid/os/storage/sensitive/SDServiceAPI;->setPassword([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v2

    .line 57
    .local v2, "re":Landroid/os/RemoteException;
    const-string v4, "LSManager.LockedStatePasswordWrapper"

    const-string v5, "Unable to communicate with LSManager"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
