.class public Landroid/os/PersonaManager$StateManager;
.super Ljava/lang/Object;
.source "PersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateManager"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IPersonaManager;

.field private userId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/IPersonaManager;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IPersonaManager;
    .param p3, "userId"    # I

    .prologue
    .line 2387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2388
    iput-object p2, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    .line 2389
    iput-object p1, p0, Landroid/os/PersonaManager$StateManager;->mContext:Landroid/content/Context;

    .line 2390
    iput p3, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    .line 2391
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/IPersonaManager;ILandroid/os/PersonaManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/os/IPersonaManager;
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/os/PersonaManager$1;

    .prologue
    .line 2382
    invoke-direct {p0, p1, p2, p3}, Landroid/os/PersonaManager$StateManager;-><init>(Landroid/content/Context;Landroid/os/IPersonaManager;I)V

    return-void
.end method


# virtual methods
.method public fireEvent(Landroid/content/pm/PersonaNewEvent;)Landroid/content/pm/PersonaState;
    .locals 3
    .param p1, "event"    # Landroid/content/pm/PersonaNewEvent;

    .prologue
    .line 2432
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager.fireEvent()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2435
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Landroid/os/IPersonaManager;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2440
    :goto_0
    return-object v1

    .line 2436
    :catch_0
    move-exception v0

    .line 2437
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2440
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPreviousState()Landroid/content/pm/PersonaState;
    .locals 3

    .prologue
    .line 2407
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager.getState()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2410
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getPreviousState(I)Landroid/content/pm/PersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2415
    :goto_0
    return-object v1

    .line 2411
    :catch_0
    move-exception v0

    .line 2412
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPreviousState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2415
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState()Landroid/content/pm/PersonaState;
    .locals 3

    .prologue
    .line 2395
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2397
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getState(I)Landroid/content/pm/PersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2402
    :goto_0
    return-object v1

    .line 2398
    :catch_0
    move-exception v0

    .line 2399
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2402
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public inState(Landroid/content/pm/PersonaState;)Z
    .locals 3
    .param p1, "state"    # Landroid/content/pm/PersonaState;

    .prologue
    .line 2421
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2423
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Landroid/os/IPersonaManager;->inState(Landroid/content/pm/PersonaState;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2428
    :goto_0
    return v1

    .line 2424
    :catch_0
    move-exception v0

    .line 2425
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2428
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAttribute(Landroid/content/pm/PersonaAttribute;)Z
    .locals 3
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;

    .prologue
    .line 2456
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager.isAttribute()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2459
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Landroid/os/IPersonaManager;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2464
    :goto_0
    return v1

    .line 2460
    :catch_0
    move-exception v0

    .line 2461
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2464
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAttribute(Landroid/content/pm/PersonaAttribute;Z)Z
    .locals 3
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;
    .param p2, "enabled"    # Z

    .prologue
    .line 2444
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager.setAttribute()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2447
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IPersonaManager;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2452
    :goto_0
    return v1

    .line 2448
    :catch_0
    move-exception v0

    .line 2449
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2452
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
