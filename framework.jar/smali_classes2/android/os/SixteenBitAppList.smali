.class public Landroid/os/SixteenBitAppList;
.super Ljava/lang/Object;
.source "SixteenBitAppList.java"


# static fields
.field private static final TAG_DCS:Ljava/lang/String; = "SRIB_DCS"

.field private static mInstance:Landroid/os/SixteenBitAppList;


# instance fields
.field private mWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Landroid/os/SixteenBitAppList;->mInstance:Landroid/os/SixteenBitAppList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/SixteenBitAppList;->mWhiteList:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method public static getInstance()Landroid/os/SixteenBitAppList;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 44
    const-string v1, "debug.dcs.enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 45
    .local v0, "DEBUG_DCS_MODE":Z
    sget-object v1, Landroid/os/SixteenBitAppList;->mInstance:Landroid/os/SixteenBitAppList;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Landroid/os/SixteenBitAppList;

    invoke-direct {v1}, Landroid/os/SixteenBitAppList;-><init>()V

    sput-object v1, Landroid/os/SixteenBitAppList;->mInstance:Landroid/os/SixteenBitAppList;

    .line 47
    if-ne v0, v3, :cond_2

    .line 48
    sget-object v1, Landroid/os/SixteenBitAppList;->mInstance:Landroid/os/SixteenBitAppList;

    invoke-virtual {v1}, Landroid/os/SixteenBitAppList;->updateFromTextFile()V

    .line 53
    :cond_0
    :goto_0
    const-string v1, "SRIB_DCS"

    const-string v2, "In 16BitAppList getInstance Size of 16 bit app list "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-ne v0, v3, :cond_1

    sget-object v1, Landroid/os/SixteenBitAppList;->mInstance:Landroid/os/SixteenBitAppList;

    invoke-virtual {v1}, Landroid/os/SixteenBitAppList;->updateFromTextFile()V

    .line 55
    :cond_1
    sget-object v1, Landroid/os/SixteenBitAppList;->mInstance:Landroid/os/SixteenBitAppList;

    return-object v1

    .line 50
    :cond_2
    sget-object v1, Landroid/os/SixteenBitAppList;->mInstance:Landroid/os/SixteenBitAppList;

    invoke-virtual {v1}, Landroid/os/SixteenBitAppList;->updateFromLocalList()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addPackage(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/Integer;

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/SixteenBitAppList;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/SixteenBitAppList;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPixelFormat(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/SixteenBitAppList;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPackageExist(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    const-string v0, "SRIB_DCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of 16 bit app list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SixteenBitAppList;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Landroid/os/SixteenBitAppList;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateFromLocalList()V
    .locals 2

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    const-string v0, "SRIB_DCS"

    const-string v1, "Add list of 16-bit renderable files here"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v0, "com.android.mms"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/SixteenBitAppList;->addPackage(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v0, "com.android.contacts"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/SixteenBitAppList;->addPackage(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v0, "com.android.calendar"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/SixteenBitAppList;->addPackage(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v0, "com.sec.android.app.popupcalculator"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/SixteenBitAppList;->addPackage(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v0, "com.sec.android.app.clockpackage"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/SixteenBitAppList;->addPackage(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateFromTextFile()V
    .locals 8

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    const-string v5, "SRIB_DCS"

    const-string v6, "Update From text File Called in 16bit app list "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    const-string v0, "/data/log/SixteenbitAppList.txt"

    .line 76
    .local v0, "DCS_FILE_NAME":Ljava/lang/String;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_2
    const-string v5, "SRIB_DCS"

    const-string v6, "Clearing 16Bit App list !!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Landroid/os/SixteenBitAppList;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    const/4 v2, 0x0

    .line 85
    .local v2, "line":Ljava/lang/String;
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 86
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "strs":[Ljava/lang/String;
    const-string v5, "SRIB_DCS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rebuilding 16Bit App list adding package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "with format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/SixteenBitAppList;->addPackage(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 91
    .end local v4    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 93
    const-string v5, "SRIB_DCS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught exception while reading text file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    .end local v0    # "DCS_FILE_NAME":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    monitor-exit p0

    return-void

    .line 77
    :catch_1
    move-exception v1

    .line 78
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v5, "SRIB_DCS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught exception in updateFromtextFile while opening for reading:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 96
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v5, "SRIB_DCS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 72
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 90
    .restart local v0    # "DCS_FILE_NAME":Ljava/lang/String;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method
