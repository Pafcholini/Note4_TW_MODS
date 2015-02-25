.class public Lcom/sec/android/secvision/sef/SEF;
.super Ljava/lang/Object;
.source "SEF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;,
        Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;,
        Lcom/sec/android/secvision/sef/SEF$Options;,
        Lcom/sec/android/secvision/sef/SEF$KeyName;,
        Lcom/sec/android/secvision/sef/SEF$DataType;,
        Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SEF_VERSION:Ljava/lang/String; = "1.03"

.field private static final TAG:Ljava/lang/String; = "SEF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    return-void
.end method

.method public static addFastSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .prologue
    .line 427
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/secvision/sef/SEF;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I

    move-result v0

    return v0
.end method

.method public static addFastSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 448
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 449
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_0
    return v4

    .line 453
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 454
    :cond_2
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    :cond_3
    if-eqz p2, :cond_4

    array-length v0, p2

    if-gtz v0, :cond_5

    .line 459
    :cond_4
    const-string v0, "SEF"

    const-string v1, "Invalid data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_1
    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/secvision/sef/SEFJNI;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v4

    goto :goto_0

    :cond_6
    array-length v4, p3

    goto :goto_1
.end method

.method public static addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .prologue
    .line 479
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/secvision/sef/SEF;->addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I

    move-result v0

    return v0
.end method

.method public static addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 500
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 501
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_0
    return v4

    .line 505
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 506
    :cond_2
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 510
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 511
    :cond_4
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid SEF Data File name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 515
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sec/android/secvision/sef/SEFJNI;->addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v4

    goto :goto_0

    :cond_6
    array-length v4, p3

    goto :goto_1
.end method

.method public static addSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .prologue
    .line 289
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/secvision/sef/SEF;->addSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 309
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 310
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    return v4

    .line 314
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 315
    :cond_2
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :cond_3
    if-eqz p2, :cond_4

    array-length v0, p2

    if-gtz v0, :cond_5

    .line 320
    :cond_4
    const-string v0, "SEF"

    const-string v1, "Invalid data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_1
    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v4

    goto :goto_0

    :cond_6
    array-length v4, p3

    goto :goto_1
.end method

.method public static addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .prologue
    .line 339
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/secvision/sef/SEF;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 359
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 360
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    return v4

    .line 364
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 365
    :cond_2
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 370
    :cond_4
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid SEF Data File name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v4

    goto :goto_0

    :cond_6
    array-length v4, p3

    goto :goto_1
.end method

.method public static addSEFDataFiles(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II)I
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyNames"    # [Ljava/lang/String;
    .param p2, "dataFileNames"    # [Ljava/lang/String;
    .param p3, "dataTypes"    # [I
    .param p4, "option"    # I

    .prologue
    .line 395
    array-length v6, p1

    .line 396
    .local v6, "dataCount":I
    array-length v0, p2

    if-eq v6, v0, :cond_2

    .line 397
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data Count is different. ( keyNames data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", dataFileNames data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 403
    :cond_1
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v0, 0x0

    .line 412
    :goto_1
    return v0

    .line 398
    :cond_2
    array-length v0, p3

    if-eq v6, v0, :cond_0

    .line 399
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data Count is different. ( keyNames data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", dataTypes data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 407
    :cond_3
    array-length v0, p1

    new-array v2, v0, [I

    .line 408
    .local v2, "keynamesLength":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v0, p1

    if-ge v7, v0, :cond_4

    .line 409
    aget-object v0, p1, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput v0, v2, v7

    .line 408
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 412
    invoke-static/range {v0 .. v6}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFDataFiles(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[III)I

    move-result v0

    goto :goto_1
.end method

.method public static checkAudioInJPEG(Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1186
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1187
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    const/4 v0, 0x0

    .line 1191
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;

    move-result-object v0

    goto :goto_0
.end method

.method public static clearAudioData(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1146
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1147
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const/4 v0, 0x0

    .line 1151
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->clearQdioData(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static clearQdioData(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1167
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1168
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const/4 v0, 0x0

    .line 1172
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->clearQdioData(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static clearSEFData(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 573
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 574
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v0, 0x0

    .line 577
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->clearSEFData(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "srcFileName"    # Ljava/lang/String;
    .param p1, "dstFileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1252
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1253
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid src file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :goto_0
    return v0

    .line 1257
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 1258
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dst file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1262
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/QdioJNI;->copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "srcFileName"    # Ljava/lang/String;
    .param p1, "dstFileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 878
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 879
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid src file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :goto_0
    return v0

    .line 883
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 884
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dst file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 888
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static deleteAudioData(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1105
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1106
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const/4 v0, 0x0

    .line 1110
    :goto_0
    return v0

    :cond_1
    const-string v0, "SoundShot_000"

    const-string v1, "SoundShot_000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/secvision/sef/SEFJNI;->deleteQdioData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static deleteQdioData(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1127
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1128
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/4 v0, 0x0

    .line 1132
    :goto_0
    return v0

    :cond_1
    const-string v0, "SoundShot_000"

    const-string v1, "SoundShot_000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/secvision/sef/SEFJNI;->deleteQdioData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static deleteSEFData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 549
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 550
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_0
    return v0

    .line 554
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 555
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 559
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sec/android/secvision/sef/SEFJNI;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getAudioStreamBuffer(Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;I)[B
    .locals 1
    .param p0, "qdioJpegData"    # Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1207
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/QdioJNI;->getAudioStreamBuffer(Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getMajorDataType(Ljava/lang/String;)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 833
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 834
    :cond_0
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :goto_0
    return v2

    .line 838
    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 839
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 842
    :cond_2
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEF;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v0

    .line 843
    .local v0, "dataTypes":[I
    if-nez v0, :cond_3

    .line 844
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No data type has been found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 847
    :cond_3
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-le v1, v2, :cond_5

    .line 848
    aget v3, v0, v1

    const/16 v4, 0x800

    if-lt v3, v4, :cond_4

    aget v3, v0, v1

    const/16 v4, 0x4000

    if-gt v3, v4, :cond_4

    aget v3, v0, v1

    and-int/lit8 v3, v3, 0xf

    if-nez v3, :cond_4

    .line 851
    aget v2, v0, v1

    goto :goto_0

    .line 847
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 854
    :cond_5
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No major data type has been found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSEFData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 12
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 706
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_1

    .line 707
    :cond_0
    const-string v9, "SEF"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid file name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 755
    :goto_0
    return-object v6

    .line 711
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_3

    .line 712
    :cond_2
    const-string v9, "SEF"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid key name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 713
    goto :goto_0

    .line 716
    :cond_3
    const/4 v6, 0x0

    .line 717
    .local v6, "sefData":[B
    const/4 v3, 0x0

    .line 719
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEF;->getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;

    move-result-object v0

    .line 721
    .local v0, "dataPosition":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;
    if-nez v0, :cond_4

    .line 722
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 753
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    move-object v6, v8

    goto :goto_0

    .line 725
    :cond_4
    :try_start_2
    iget v7, v0, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;->offset:I

    .line 726
    .local v7, "startOffset":I
    iget v9, v0, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;->length:I

    add-int v2, v7, v9

    .line 727
    .local v2, "endOffset":I
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v9

    if-ge v9, v2, :cond_5

    .line 728
    const-string v9, "SEF"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fis.available is smaller then stream end : fileLen = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", strema end on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 753
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    move-object v6, v8

    goto :goto_0

    .line 738
    :cond_5
    :try_start_3
    iget v9, v0, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;->length:I

    new-array v6, v9, [B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 739
    if-gez v7, :cond_6

    .line 753
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    move-object v6, v8

    goto :goto_0

    .line 742
    :cond_6
    int-to-long v10, v7

    :try_start_4
    invoke-virtual {v4, v10, v11}, Ljava/io/FileInputStream;->skip(J)J

    .line 745
    invoke-virtual {v4, v6}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v5

    .line 746
    .local v5, "length":I
    if-nez v5, :cond_7

    .line 753
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    move-object v6, v8

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    move-object v3, v4

    .line 754
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 750
    .end local v0    # "dataPosition":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;
    .end local v2    # "endOffset":I
    .end local v5    # "length":I
    .end local v7    # "startOffset":I
    :catch_0
    move-exception v1

    .line 751
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 753
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v8

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 750
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getSEFDataCount(Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 765
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 766
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v0, -0x1

    .line 775
    :goto_0
    return v0

    .line 769
    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataCount(Ljava/lang/String;)I

    move-result v0

    .line 775
    .local v0, "ret":I
    goto :goto_0
.end method

.method public static getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 639
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 640
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :goto_0
    return-object v1

    .line 644
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 645
    :cond_2
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 649
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 650
    .local v0, "posArray":[I
    if-nez v0, :cond_4

    .line 651
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No SEF data is found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 655
    :cond_4
    new-instance v1, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;

    invoke-direct {v1}, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;-><init>()V

    .line 656
    .local v1, "position":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;->offset:I

    .line 657
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;->length:I

    goto :goto_0
.end method

.method public static getSEFDataPositionArray(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 674
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 675
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 690
    :cond_1
    :goto_0
    return-object v0

    .line 679
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 680
    :cond_3
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 681
    goto :goto_0

    .line 684
    :cond_4
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 685
    .local v0, "posArray":[I
    if-nez v0, :cond_1

    .line 686
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No SEF data is found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 687
    goto :goto_0
.end method

.method public static getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 790
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 791
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :goto_0
    return v0

    .line 795
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 796
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 800
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 192
    invoke-static {}, Lcom/sec/android/secvision/sef/SEFJNI;->getNativeVersion()I

    move-result v0

    .line 193
    .local v0, "native_version":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1.03_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "version":Ljava/lang/String;
    return-object v1
.end method

.method public static hasDataType(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "dataType"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 245
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-ne p1, v4, :cond_2

    .line 246
    :cond_0
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Data Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    :goto_0
    return v2

    .line 250
    :cond_2
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 251
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :cond_3
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEF;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v0

    .line 255
    .local v0, "currentTypes":[I
    if-nez v0, :cond_4

    .line 256
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :cond_4
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-le v1, v4, :cond_1

    .line 261
    aget v3, v0, v1

    if-ne p1, v3, :cond_5

    .line 262
    const/4 v2, 0x1

    goto :goto_0

    .line 260
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static isAudioJPEG(Ljava/lang/String;)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1221
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isJPEG(Ljava/lang/String;)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1237
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isSEFFile(Ljava/lang/String;)Z
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 213
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 214
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0

    .line 220
    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 221
    const/4 v0, 0x0

    .local v0, "ret":Z
    goto :goto_0

    .line 223
    .end local v0    # "ret":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public static listKeyNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 599
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 600
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v0, 0x0

    .line 604
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->listKeyNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "dataType"    # I

    .prologue
    .line 619
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 620
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Data Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v0, 0x0

    .line 624
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static listSEFDataTypes(Ljava/lang/String;)[I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 814
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 815
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v0, 0x0

    .line 819
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0
.end method

.method public static saveAudioJPEG(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "audioStream"    # [B

    .prologue
    .line 1079
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_2

    .line 1080
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    if-eqz p2, :cond_1

    .line 1082
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveAudioJPEG input parameter is null :  audioStream.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :goto_0
    const/4 v0, 0x0

    .line 1089
    :goto_1
    return v0

    .line 1084
    :cond_1
    const-string v0, "SEF"

    const-string/jumbo v1, "saveAudioJPEG input parameter is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1089
    :cond_2
    array-length v0, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, p2, v0, p1, v1}, Lcom/sec/android/secvision/sef/SEFJNI;->saveAudioJPEG(Ljava/lang/String;[BILjava/lang/String;I)I

    move-result v0

    goto :goto_1
.end method

.method public static saveAudioJPEG(Ljava/lang/String;[B)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "audiostream"    # [B

    .prologue
    .line 1063
    const-string v0, "SoundShot_000"

    invoke-static {p0, v0, p1}, Lcom/sec/android/secvision/sef/SEF;->saveAudioJPEG(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public static showSEFDataList(Ljava/lang/String;)V
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1274
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1275
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1289
    :cond_2
    return-void
.end method
