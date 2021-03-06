.class public Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
.super Ljava/lang/Object;
.source "BargeInRecognizer.java"


# static fields
.field private static final LOAD_PATH:Ljava/lang/String; = "/system/voicebargeindata"

.field public static final STATE_READY:I = 0x0

.field public static final STATE_RUNNING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

.field private audio_thread:Ljava/lang/Thread;

.field private bargeInSensorySo64FilePath:Ljava/lang/String;

.field private bargeInSensorySoFilePath:Ljava/lang/String;

.field private bargeInSoFilePath:Ljava/lang/String;

.field private chineseModelPath:Ljava/lang/String;

.field private englishModelPath:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private intBargeInResult:I

.field public isEnableBargeIn:Z

.field private isEnableChineseBargeIn:Z

.field private isEnableJapaneseBargeIn:Z

.field private isEnableRussianBargeIn:Z

.field private japaneseModelPath:Ljava/lang/String;

.field private koreanModelPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

.field private mState:I

.field private russianModelPath:Ljava/lang/String;

.field private sVoiceLanguageFilePath:Ljava/lang/String;

.field private samsungOOVResult:Z

.field private uselanguage:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    .line 27
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 28
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mListener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 29
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 31
    const-string v0, "BargeInRecognizer"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    .line 35
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    .line 36
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    .line 37
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableJapaneseBargeIn:Z

    .line 38
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableRussianBargeIn:Z

    .line 39
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->samsungOOVResult:Z

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    .line 46
    const-string v0, "/system/lib/libsasr-jni.so"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->bargeInSoFilePath:Ljava/lang/String;

    .line 47
    const-string v0, "/system/lib/libSensoryBargeInEngine.so"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->bargeInSensorySoFilePath:Ljava/lang/String;

    .line 48
    const-string v0, "/system/lib64/libSensoryBargeInEngine.so"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->bargeInSensorySo64FilePath:Ljava/lang/String;

    .line 49
    const-string v0, "/system/voicebargeindata/sasr/eng/16k/param/models_hci_daco.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->englishModelPath:Ljava/lang/String;

    .line 50
    const-string v0, "/system/voicebargeindata/sasr/kor/16k/param/models_16k_KOR.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->koreanModelPath:Ljava/lang/String;

    .line 51
    const-string v0, "/system/voicebargeindata/sasr/chi/16k/param/models_16k_CHI.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->chineseModelPath:Ljava/lang/String;

    .line 52
    const-string v0, "/system/voicebargeindata/sasr/jap/16k/param/models_16k_JAPANESE_bi.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->japaneseModelPath:Ljava/lang/String;

    .line 53
    const-string v0, "/system/voicebargeindata/sasr/rus/16k/param/models_16k_RUSSIAN_bi.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->russianModelPath:Ljava/lang/String;

    .line 55
    const-string v0, "/data/data/com.vlingo.midas/files/language.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "make new BargeInRecognizer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isUseModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isUseChineseModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->japaneseModelPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableJapaneseBargeIn:Z

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->russianModelPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableRussianBargeIn:Z

    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->setLanguage()V

    .line 71
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnableBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uselanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnableChineseBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnableJapaneseBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableJapaneseBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnableRussianBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableRussianBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method private SendHandlerMessage(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 108
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 112
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "commandType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 116
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessageDelayed : 1500"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 127
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 123
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessageDelayed : 700"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->delayedStartBargeIn(I)V

    return-void
.end method

.method private delayedStartBargeIn(I)V
    .locals 6
    .param p1, "commandType"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "delayedStartBargeIn"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "BargeIn is running. So Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-short v2, v0, v1

    .line 246
    :goto_0
    monitor-exit p0

    .line 255
    return-void

    .line 227
    :cond_0
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mListener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    const-string v2, "/system/voicebargeindata"

    iget v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    iget-boolean v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->samsungOOVResult:Z

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;-><init>(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;Ljava/lang/String;IIZ)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 231
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 234
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mState change to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 239
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "fail to running Bargein"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->stop()V

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "why running empty audio_thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isBargeInFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mFilePath"    # Ljava/lang/String;

    .prologue
    .line 605
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 606
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    const/4 v1, 0x1

    .line 611
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUseModel()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 318
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->bargeInSoFilePath:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .local v2, "mFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->bargeInSensorySoFilePath:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .local v3, "newFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->bargeInSensorySo64FilePath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v4, "newFile64":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->englishModelPath:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "eFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->koreanModelPath:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v1, "kFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 327
    iput-boolean v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->samsungOOVResult:Z

    .line 339
    :goto_0
    return v5

    .line 330
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 332
    :cond_1
    iput-boolean v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->samsungOOVResult:Z

    .line 333
    iget-object v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v7, "Could not find libsasr-jni.so use only libSensoryBargeInEngine.so"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v7, "Error : Could not find libsasr-jni.so && libSensoryBargeInEngine.so"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 339
    goto :goto_0
.end method

.method private readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 555
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 556
    .local v3, "mFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 557
    .local v4, "mFileInputStream":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 559
    .local v0, "data":[B
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 563
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .local v5, "mFileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 565
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 566
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 568
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 592
    .end local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    :goto_0
    return-object v6

    .line 571
    :catch_0
    move-exception v1

    .line 574
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v4, :cond_0

    .line 578
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 586
    :cond_0
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 588
    goto :goto_0

    .line 580
    :catch_1
    move-exception v2

    .line 583
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_1
    move-object v6, v7

    .line 592
    goto :goto_0

    .line 571
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private setLanguage()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 395
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "stringLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "stringCountry":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "sVoiceLanguage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stringLanguage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stringCountry : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sVoiceLanguage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-eqz v0, :cond_c

    .line 405
    const-string/jumbo v3, "ko-KR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    iput v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    const-string v3, "en-US"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 411
    iput v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 413
    :cond_2
    const-string/jumbo v3, "zh-CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    if-eqz v3, :cond_3

    .line 415
    iput v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 417
    :cond_3
    const-string v3, "es-ES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 419
    iput v9, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 421
    :cond_4
    const-string/jumbo v3, "v-es-LA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 423
    const/16 v3, 0xb

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 425
    :cond_5
    const-string v3, "fr-FR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 427
    iput v10, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 429
    :cond_6
    const-string v3, "de-DE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 431
    const/4 v3, 0x5

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 433
    :cond_7
    const-string/jumbo v3, "it-IT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 435
    const/4 v3, 0x6

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 437
    :cond_8
    const-string/jumbo v3, "ja-JP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 439
    const/4 v3, 0x7

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 441
    :cond_9
    const-string/jumbo v3, "ru-RU"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 443
    const/16 v3, 0x8

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 445
    :cond_a
    const-string/jumbo v3, "pt-BR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 447
    const/16 v3, 0x9

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 449
    :cond_b
    const-string v3, "en-GB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 451
    const/16 v3, 0xa

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 457
    :cond_c
    if-eqz v2, :cond_0

    .line 459
    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 461
    iput v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 463
    :cond_d
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 465
    const-string v3, "GB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 467
    const/16 v3, 0xa

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 471
    :cond_e
    iput v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 474
    :cond_f
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    if-eqz v3, :cond_11

    .line 476
    const-string v3, "CN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 478
    iput v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 482
    :cond_10
    iput v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 485
    :cond_11
    const-string v3, "es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 487
    const-string v3, "ES"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 489
    iput v9, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 493
    :cond_12
    const/16 v3, 0xb

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 496
    :cond_13
    sget-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 498
    iput v10, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 500
    :cond_14
    sget-object v3, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 502
    const/4 v3, 0x5

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 504
    :cond_15
    sget-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 506
    const/4 v3, 0x6

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 508
    :cond_16
    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 510
    const/4 v3, 0x7

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 512
    :cond_17
    const-string/jumbo v3, "ru"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 514
    const/16 v3, 0x8

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 516
    :cond_18
    const-string/jumbo v3, "pt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 518
    const-string v3, "BR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 520
    const/16 v3, 0x9

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 524
    :cond_19
    iput v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 529
    :cond_1a
    iput v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0
.end method


# virtual methods
.method public InitBargeInRecognizer(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mListener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 88
    return-void
.end method

.method public getBargeInCmdLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    packed-switch v0, :pswitch_data_0

    .line 390
    const-string v0, "en-US"

    :goto_0
    return-object v0

    .line 366
    :pswitch_0
    const-string/jumbo v0, "ko-KR"

    goto :goto_0

    .line 368
    :pswitch_1
    const-string v0, "en-US"

    goto :goto_0

    .line 370
    :pswitch_2
    const-string/jumbo v0, "zh-CN"

    goto :goto_0

    .line 372
    :pswitch_3
    const-string v0, "es-ES"

    goto :goto_0

    .line 374
    :pswitch_4
    const-string v0, "fr-FR"

    goto :goto_0

    .line 376
    :pswitch_5
    const-string v0, "de-DE"

    goto :goto_0

    .line 378
    :pswitch_6
    const-string/jumbo v0, "it-IT"

    goto :goto_0

    .line 380
    :pswitch_7
    const-string/jumbo v0, "ja-JP"

    goto :goto_0

    .line 382
    :pswitch_8
    const-string/jumbo v0, "ru-RU"

    goto :goto_0

    .line 384
    :pswitch_9
    const-string/jumbo v0, "pt-BR"

    goto :goto_0

    .line 386
    :pswitch_a
    const-string v0, "en-GB"

    goto :goto_0

    .line 388
    :pswitch_b
    const-string/jumbo v0, "v-es-LA"

    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getIntBargeInResult()I
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    .line 549
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState mState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    return v0
.end method

.method public isBargeInEnabled()Z
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    return v0
.end method

.method public isUseChineseModel()Z
    .locals 2

    .prologue
    .line 349
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->chineseModelPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, "chFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    const/4 v1, 0x0

    .line 357
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setContext"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-object p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mContext:Landroid/content/Context;

    .line 96
    return-void
.end method

.method public startBargeIn(I)V
    .locals 3
    .param p1, "commandType"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startBargeIn"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commandType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    .line 144
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v0, :cond_1

    .line 146
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mState change to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->setLanguage()V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$1;-><init>(Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "handler create"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->SendHandlerMessage(I)V

    .line 168
    :cond_1
    return-void
.end method

.method public startBargeIn(II)V
    .locals 3
    .param p1, "commandType"    # I
    .param p2, "setLang"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startBargeIn Type2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commandType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLang : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    .line 188
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v0, :cond_1

    .line 190
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mState change to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iput p2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$2;-><init>(Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "handler create"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->SendHandlerMessage(I)V

    .line 212
    :cond_1
    return-void
.end method

.method public stopBargeIn()V
    .locals 4

    .prologue
    .line 262
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopBargeIn"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    monitor-enter p0

    .line 266
    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v1, :cond_2

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    .line 273
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "handler = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v1, v1, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->stop()V

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 285
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "wait for audio to stop: begin"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "wait for audio to stop: end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "audio = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 307
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "audio_thread = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mState change to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_2
    monitor-exit p0

    .line 314
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 291
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 313
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 296
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "audio_thread was not working"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
