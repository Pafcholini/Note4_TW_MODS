.class public Lcom/sec/android/secvision/sef/QdioJNI;
.super Ljava/lang/Object;
.source "QdioJNI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QdioJNI"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "SEF"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private static native AddSoundInQdioFile(Ljava/lang/String;[BILjava/lang/String;I)I
.end method

.method public static native DeleteQdioFromFile(Ljava/lang/String;)I
.end method

.method private static native ParseQdioFile(Ljava/lang/String;)[I
.end method

.method public static checkAudioInJPEG(Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 24
    const/4 v2, 0x0

    .local v2, "qjData":Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    move-object v0, v3

    .line 25
    check-cast v0, [I

    .line 26
    .local v0, "getParsedData":[I
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 27
    const-string v4, "QdioJNI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAudioInJPEG input parameter is null : filename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    :goto_0
    return-object v3

    .line 30
    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->ParseQdioFile(Ljava/lang/String;)[I

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 34
    array-length v4, v0

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 35
    const-string v4, "QdioJNI"

    const-string v5, "Some Sound Data is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    :cond_2
    new-instance v2, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;

    .end local v2    # "qjData":Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    invoke-direct {v2}, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;-><init>()V

    .line 40
    .restart local v2    # "qjData":Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_5

    .line 41
    aget v4, v0, v1

    if-lez v4, :cond_3

    add-int/lit8 v4, v1, 0x1

    aget v4, v0, v4

    if-gtz v4, :cond_4

    .line 42
    :cond_3
    const-string v4, "QdioJNI"

    const-string v5, "Some Sound Data stream is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_4
    iget-object v4, v2, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    aget v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v4, v2, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    aget v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget v4, v2, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->audio_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->audio_count:I

    .line 48
    iput-object p0, v2, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->filename:Ljava/lang/String;

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move-object v3, v2

    .line 50
    goto :goto_0
.end method

.method public static checkFileString(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 20
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native copyAdioData(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "srcFilename"    # Ljava/lang/String;
    .param p1, "dstFilename"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/secvision/sef/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/QdioJNI;->copyAdioData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getAudioStreamBuffer(Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;I)[B
    .locals 12
    .param p0, "qdioJpegData"    # Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 54
    move-object v4, v8

    check-cast v4, [B

    .line 55
    .local v4, "ret":[B
    if-nez p0, :cond_0

    .line 56
    const-string v9, "QdioJNI"

    const-string/jumbo v10, "qdioJpegData is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return-object v8

    .line 59
    :cond_0
    iget v9, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->audio_count:I

    if-gt v9, p1, :cond_1

    .line 60
    const-string v9, "QdioJNI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid index. file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->audio_count:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " audio streams but index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-virtual {p0, p1}, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->getStartOffset(I)I

    move-result v5

    .line 68
    .local v5, "startOffset":I
    invoke-virtual {p0, p1}, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->getLength(I)I

    move-result v9

    add-int v1, v5, v9

    .line 69
    .local v1, "endOffset":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v9

    if-lt v9, v1, :cond_2

    .line 70
    const-string v9, "QdioJNI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fis.available is smaller then audio stream end : fileLen = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", audio strema end on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 75
    :cond_2
    :try_start_0
    const-string v9, "QdioJNI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fis.avaliable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v9, "QdioJNI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "s = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sub-int v9, v1, v5

    new-array v4, v9, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    if-gez v5, :cond_3

    .line 94
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .line 81
    :cond_3
    int-to-long v10, v5

    :try_start_1
    invoke-virtual {v2, v10, v11}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 82
    .local v6, "skipCheck":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-nez v9, :cond_4

    .line 94
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .line 87
    :cond_4
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 88
    .local v3, "length":I
    if-nez v3, :cond_5

    .line 94
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .end local v3    # "length":I
    .end local v6    # "skipCheck":J
    :goto_1
    move-object v8, v4

    .line 96
    goto/16 :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v8
.end method

.method private static native getNativeVersion()I
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    invoke-static {}, Lcom/sec/android/secvision/sef/QdioJNI;->getNativeVersion()I

    move-result v0

    .line 116
    .local v0, "native_version":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1.02_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isJPEG(Ljava/lang/String;)I
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 99
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    const-string v1, "QdioJNI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isJPEG input parameter is null : filename = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->isQdioFile(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static native isQdioFile(Ljava/lang/String;)I
.end method
