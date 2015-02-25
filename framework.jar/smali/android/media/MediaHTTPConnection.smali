.class public Landroid/media/MediaHTTPConnection;
.super Landroid/media/IMediaHTTPConnection$Stub;
.source "MediaHTTPConnection.java"


# static fields
.field private static final HTTP_TEMP_REDIRECT:I = 0x133

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final SLINK_GET_DURATION:I = 0x11

.field private static final TAG:Ljava/lang/String; = "MediaHTTPConnection"

.field private static final VERBOSE:Z


# instance fields
.field private mAllowCrossDomainRedirect:Z

.field private mAllowCrossProtocolRedirect:Z

.field private mConnection:Ljava/net/HttpURLConnection;

.field private mCurrentOffset:J

.field private mDuration:J

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInputStream:Ljava/io/InputStream;

.field private mIsTranscodedUrl:Z

.field private mNativeContext:J

.field private mPartialDownloadSupported:Z

.field private mProxyIP:Ljava/lang/String;

.field private mProxyPort:I

.field private mReadTimeoutMs:I

.field private mSetProxy:Z

.field private mTotalSize:J

.field private mURL:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 499
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 500
    invoke-static {}, Landroid/media/MediaHTTPConnection;->native_init()V

    .line 501
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Landroid/media/IMediaHTTPConnection$Stub;-><init>()V

    .line 49
    iput-wide v4, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    .line 50
    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 51
    iput v1, p0, Landroid/media/MediaHTTPConnection;->mProxyPort:I

    .line 53
    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    .line 54
    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 55
    iput-wide v4, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 56
    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 58
    iput-boolean v2, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 59
    iput-boolean v2, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    .line 66
    iput-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mIsTranscodedUrl:Z

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaHTTPConnection;->mReadTimeoutMs:I

    .line 72
    iput-boolean v2, p0, Landroid/media/MediaHTTPConnection;->mPartialDownloadSupported:Z

    .line 76
    iput-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mSetProxy:Z

    .line 79
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 83
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_setup()V

    .line 84
    return-void
.end method

.method private convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p1, "headers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "\r\n"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, "pairs":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v6, v0, v2

    .line 144
    .local v6, "pair":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 145
    .local v1, "colonPos":I
    if-ltz v1, :cond_0

    .line 146
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, "val":Ljava/lang/String;
    invoke-direct {p0, v3, v8}, Landroid/media/MediaHTTPConnection;->filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 150
    invoke-virtual {v5, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .end local v3    # "key":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "colonPos":I
    .end local v6    # "pair":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method private filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 120
    const-string v2, "MediaHTTPConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filterOutInternalHeaders: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", val="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v2, "android-allow-cross-domain-redirect"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    invoke-direct {p0, p2}, Landroid/media/MediaHTTPConnection;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 124
    iget-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    iput-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    .line 136
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 125
    :cond_2
    const-string/jumbo v2, "use-proxy"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    const-string v2, "MediaHTTPConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filterOutInternalHeaders use-proxy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, "colonPos":I
    if-lez v0, :cond_0

    .line 129
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mProxyIP:Ljava/lang/String;

    .line 130
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/media/MediaHTTPConnection;->mProxyPort:I

    .line 131
    const-string v1, "MediaHTTPConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sta-proxy-ip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaHTTPConnection;->mProxyIP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaHTTPConnection;->mProxyPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final isLocalHost(Ljava/net/URL;)Z
    .locals 4
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    if-nez p0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v1

    .line 181
    :cond_1
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 188
    :try_start_0
    const-string/jumbo v3, "localhost"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 189
    goto :goto_0

    .line 191
    :cond_2
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 192
    goto :goto_0

    .line 194
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getIMemory()Landroid/os/IBinder;
.end method

.method private static final native native_init()V
.end method

.method private final native native_readAt(JI)I
.end method

.method private final native native_setup()V
.end method

.method private parseBoolean(Ljava/lang/String;)Z
    .locals 8
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 113
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 111
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "yes"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private readAt(J[BI)I
    .locals 9
    .param p1, "offset"    # J
    .param p3, "data"    # [B
    .param p4, "size"    # I

    .prologue
    const/4 v3, -0x1

    .line 379
    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 382
    .local v2, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 385
    :try_start_0
    iget-wide v4, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    .line 386
    invoke-direct {p0, p1, p2}, Landroid/media/MediaHTTPConnection;->seekTo(J)V

    .line 389
    :cond_0
    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5, p4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 391
    .local v1, "n":I
    if-ne v1, v3, :cond_1

    .line 394
    const/4 v1, 0x0

    .line 397
    :cond_1
    iget-wide v4, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_0
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 422
    .end local v1    # "n":I
    :goto_0
    return v1

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/net/NoRouteToHostException;
    const-string v3, "MediaHTTPConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readAt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/16 v1, -0x3f2

    goto :goto_0

    .line 407
    .end local v0    # "e":Ljava/net/NoRouteToHostException;
    :catch_1
    move-exception v0

    .line 411
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v4, p0, Landroid/media/MediaHTTPConnection;->mPartialDownloadSupported:Z

    if-nez v4, :cond_2

    .line 412
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/MediaHTTPConnection;->mPartialDownloadSupported:Z

    .line 413
    const-string v3, "MediaHTTPConnection"

    const-string v4, "Return -EPIPE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/16 v1, -0x20

    goto :goto_0

    :cond_2
    move v1, v3

    .line 416
    goto :goto_0

    .line 417
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v3

    .line 422
    goto :goto_0
.end method

.method private seekTo(J)V
    .locals 27
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V

    .line 204
    const/4 v15, 0x0

    .line 206
    .local v15, "redirectCount":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v21, v0

    .line 209
    .local v21, "url":Ljava/net/URL;
    invoke-static/range {v21 .. v21}, Landroid/media/MediaHTTPConnection;->isLocalHost(Ljava/net/URL;)Z

    move-result v13

    .line 213
    .local v13, "noProxy":Z
    :cond_0
    :goto_0
    const-string v22, "MediaHTTPConnection"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "proxy "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mProxyIP:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " port "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mProxyPort:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mProxyPort:I

    move/from16 v22, v0

    if-lez v22, :cond_2

    .line 215
    new-instance v19, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mProxyIP:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mProxyPort:I

    move/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 216
    .local v19, "socketAddr":Ljava/net/SocketAddress;
    new-instance v14, Ljava/net/Proxy;

    sget-object v22, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 217
    .local v14, "proxy":Ljava/net/Proxy;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v22

    check-cast v22, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 218
    const-string v22, "MediaHTTPConnection"

    const-string v23, "connection initialized with proxy"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v14    # "proxy":Ljava/net/Proxy;
    .end local v19    # "socketAddr":Ljava/net/SocketAddress;
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mReadTimeoutMs:I

    move/from16 v22, v0

    if-lez v22, :cond_1

    .line 231
    const-string v22, "MediaHTTPConnection"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "setReadTimeout with "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mReadTimeoutMs:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "ms"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mReadTimeoutMs:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mReadTimeoutMs:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 237
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 241
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v24, v0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 363
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "noProxy":Z
    .end local v21    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 364
    .local v7, "e":Ljava/io/IOException;
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 365
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 366
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 367
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    .line 369
    throw v7

    .line 220
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v13    # "noProxy":Z
    .restart local v21    # "url":Ljava/net/URL;
    :cond_2
    if-eqz v13, :cond_3

    .line 221
    :try_start_1
    sget-object v22, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual/range {v21 .. v22}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v22

    check-cast v22, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    goto/16 :goto_1

    .line 222
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mSetProxy:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 223
    new-instance v14, Ljava/net/Proxy;

    sget-object v22, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v23, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mProxyIP:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mProxyPort:I

    move/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v14, v0, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 224
    .restart local v14    # "proxy":Ljava/net/Proxy;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v22

    check-cast v22, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    goto/16 :goto_1

    .line 226
    .end local v14    # "proxy":Ljava/net/Proxy;
    :cond_4
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v22

    check-cast v22, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    goto/16 :goto_1

    .line 246
    :cond_5
    const-wide/16 v22, 0x0

    cmp-long v22, p1, v22

    if-lez v22, :cond_6

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    const-string v23, "Range"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "bytes="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    .line 252
    .local v16, "response":I
    const/16 v22, 0x12c

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    const/16 v22, 0x12d

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    const/16 v22, 0x12e

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    const/16 v22, 0x12f

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    const/16 v22, 0x133

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 297
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 303
    :cond_7
    const/16 v22, 0xce

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    const-string v23, "Content-Range"

    invoke-virtual/range {v22 .. v23}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "contentRange":Ljava/lang/String;
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 312
    if-eqz v4, :cond_8

    .line 317
    const/16 v22, 0x2f

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 318
    .local v10, "lastSlashPos":I
    if-ltz v10, :cond_8

    .line 319
    add-int/lit8 v22, v10, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v20

    .line 323
    .local v20, "total":Ljava/lang/String;
    :try_start_2
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 340
    .end local v4    # "contentRange":Ljava/lang/String;
    .end local v10    # "lastSlashPos":I
    .end local v20    # "total":Ljava/lang/String;
    :cond_8
    :goto_3
    const-wide/16 v22, 0x0

    cmp-long v22, p1, v22

    if-lez v22, :cond_13

    const/16 v22, 0xce

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_13

    .line 343
    :try_start_3
    const-string v22, "MediaHTTPConnection"

    const-string v23, "Server doesnt support Partial Request"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaHTTPConnection;->mPartialDownloadSupported:Z

    .line 345
    new-instance v22, Ljava/io/IOException;

    invoke-direct/range {v22 .. v22}, Ljava/io/IOException;-><init>()V

    throw v22

    .line 261
    :cond_9
    add-int/lit8 v15, v15, 0x1

    const/16 v22, 0x14

    move/from16 v0, v22

    if-le v15, v0, :cond_a

    .line 262
    new-instance v22, Ljava/net/NoRouteToHostException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Too many redirects: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 265
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v12

    .line 266
    .local v12, "method":Ljava/lang/String;
    const/16 v22, 0x133

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    const-string v22, "GET"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b

    const-string v22, "HEAD"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 271
    new-instance v22, Ljava/net/NoRouteToHostException;

    const-string v23, "Invalid redirect"

    invoke-direct/range {v22 .. v23}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 273
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    const-string v23, "Location"

    invoke-virtual/range {v22 .. v23}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 274
    .local v11, "location":Ljava/lang/String;
    if-nez v11, :cond_c

    .line 275
    new-instance v22, Ljava/net/NoRouteToHostException;

    const-string v23, "Invalid redirect"

    invoke-direct/range {v22 .. v23}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 277
    :cond_c
    new-instance v21, Ljava/net/URL;

    .end local v21    # "url":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 278
    .restart local v21    # "url":Ljava/net/URL;
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v22

    const-string v23, "https"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v22

    const-string v23, "http"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 280
    new-instance v22, Ljava/net/NoRouteToHostException;

    const-string v23, "Unsupported protocol redirect"

    invoke-direct/range {v22 .. v23}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 282
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 283
    .local v18, "sameProtocol":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    if-nez v18, :cond_e

    .line 284
    new-instance v22, Ljava/net/NoRouteToHostException;

    const-string v23, "Cross-protocol redirects are disallowed"

    invoke-direct/range {v22 .. v23}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 286
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 287
    .local v17, "sameHost":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    move/from16 v22, v0

    if-nez v22, :cond_f

    if-nez v17, :cond_f

    .line 288
    new-instance v22, Ljava/net/NoRouteToHostException;

    const-string v23, "Cross-domain redirects are disallowed"

    invoke-direct/range {v22 .. v23}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 291
    :cond_f
    const/16 v22, 0x133

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 293
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    goto/16 :goto_0

    .line 328
    .end local v11    # "location":Ljava/lang/String;
    .end local v12    # "method":Ljava/lang/String;
    .end local v17    # "sameHost":Z
    .end local v18    # "sameProtocol":Z
    :cond_10
    const/16 v22, 0xc8

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_11

    .line 329
    new-instance v22, Ljava/io/IOException;

    invoke-direct/range {v22 .. v22}, Ljava/io/IOException;-><init>()V

    throw v22

    .line 331
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 332
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x1

    cmp-long v22, v22, v24

    if-nez v22, :cond_12

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    const-string v23, "Content-Length"

    invoke-virtual/range {v22 .. v23}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, "contentSize":Ljava/lang/String;
    if-eqz v5, :cond_12

    .line 335
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 337
    .end local v5    # "contentSize":Ljava/lang/String;
    :cond_12
    const-string v22, "MediaHTTPConnection"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "mTotalSize is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 349
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mIsTranscodedUrl:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    const-string v23, "X-ASP-DURATION-TIME"

    invoke-virtual/range {v22 .. v23}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 351
    .local v6, "duration":Ljava/lang/String;
    if-eqz v6, :cond_15

    .line 352
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mDuration:J

    .line 353
    const-string v22, "MediaHTTPConnection"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "duration is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaHTTPConnection;->mDuration:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v6    # "duration":Ljava/lang/String;
    :cond_14
    :goto_4
    new-instance v22, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 362
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    .line 371
    return-void

    .line 355
    .restart local v6    # "duration":Ljava/lang/String;
    :cond_15
    const-string v22, "MediaHTTPConnection"

    const-string v23, "could not get the duration"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 324
    .end local v6    # "duration":Ljava/lang/String;
    .restart local v4    # "contentRange":Ljava/lang/String;
    .restart local v10    # "lastSlashPos":I
    .restart local v20    # "total":Ljava/lang/String;
    :catch_1
    move-exception v22

    goto/16 :goto_3
.end method

.method private teardownConnection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 167
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 169
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 170
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 172
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/lang/String;

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaHTTPConnection;->disconnect()V

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 96
    const-string/jumbo v1, "type=TS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "MediaHTTPConnection"

    const-string v2, "It is transcoded url"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mIsTranscodedUrl:Z

    .line 100
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 101
    invoke-direct {p0, p2}, Landroid/media/MediaHTTPConnection;->convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_getIMemory()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V

    .line 161
    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    .line 162
    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 163
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 488
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_finalize()V

    .line 489
    return-void
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 441
    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    .line 443
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/media/MediaHTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :cond_0
    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "application/octet-stream"

    goto :goto_0
.end method

.method public getProperties(I)J
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 466
    const-string v0, "MediaHTTPConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProperties "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    packed-switch p1, :pswitch_data_0

    .line 471
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    .line 469
    :pswitch_0
    iget-wide v0, p0, Landroid/media/MediaHTTPConnection;->mDuration:J

    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public getSize()J
    .locals 4

    .prologue
    .line 428
    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    .line 430
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/media/MediaHTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :cond_0
    iget-wide v2, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    :goto_0
    return-wide v2

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/io/IOException;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readAt(JI)I
    .locals 1
    .param p1, "offset"    # J
    .param p3, "size"    # I

    .prologue
    .line 375
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaHTTPConnection;->native_readAt(JI)I

    move-result v0

    return v0
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 3
    .param p1, "proxy_ip"    # Ljava/lang/String;
    .param p2, "proxy_port"    # I

    .prologue
    .line 479
    const-string v0, "MediaHTTPConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProxy  Proxy IP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Proxy Port = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mSetProxy:Z

    .line 481
    iput-object p1, p0, Landroid/media/MediaHTTPConnection;->mProxyIP:Ljava/lang/String;

    .line 482
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 483
    iput p2, p0, Landroid/media/MediaHTTPConnection;->mProxyPort:I

    .line 484
    :cond_0
    return-void
.end method

.method public setReadTimeOut(I)V
    .locals 3
    .param p1, "timeoutMs"    # I

    .prologue
    .line 459
    const-string v0, "MediaHTTPConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReadTimeOut =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iput p1, p0, Landroid/media/MediaHTTPConnection;->mReadTimeoutMs:I

    .line 461
    return-void
.end method
