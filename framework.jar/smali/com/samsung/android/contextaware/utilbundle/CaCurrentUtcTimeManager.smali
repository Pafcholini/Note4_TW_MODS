.class public Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;
.super Ljava/lang/Object;
.source "CaCurrentUtcTimeManager.java"


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getUtcTime()[I
    .locals 4

    .prologue
    .line 51
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 52
    .local v0, "time":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 53
    const-string v2, "GMT+00:00"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 55
    const/4 v2, 0x3

    new-array v1, v2, [I

    .line 56
    .local v1, "utcTime":[I
    const/4 v2, 0x0

    iget v3, v0, Landroid/text/format/Time;->hour:I

    aput v3, v1, v2

    .line 57
    const/4 v2, 0x1

    iget v3, v0, Landroid/text/format/Time;->minute:I

    aput v3, v1, v2

    .line 58
    const/4 v2, 0x2

    iget v3, v0, Landroid/text/format/Time;->second:I

    aput v3, v1, v2

    .line 60
    return-object v1
.end method
