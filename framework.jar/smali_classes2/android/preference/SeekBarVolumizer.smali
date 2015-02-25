.class public Landroid/preference/SeekBarVolumizer;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/SeekBarVolumizer$1;,
        Landroid/preference/SeekBarVolumizer$Receiver;,
        Landroid/preference/SeekBarVolumizer$Observer;,
        Landroid/preference/SeekBarVolumizer$H;,
        Landroid/preference/SeekBarVolumizer$Callback;
    }
.end annotation


# static fields
.field private static final CHECK_RINGTONE_PLAYBACK_DELAY_MS:I = 0x3e8

.field private static final DEBUG:Z = true

.field private static final DISPLAY_PROFILE_EDIT:I = 0x1

.field private static final DISPLAY_SOUND_SETTING:I = 0x0

.field private static final MSG_INIT_SAMPLE:I = 0x3

.field private static final MSG_SET_STREAM_VOLUME:I = 0x0

.field private static final MSG_START_SAMPLE:I = 0x1

.field private static final MSG_STOP_SAMPLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SeekBarVolumizer"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Landroid/preference/SeekBarVolumizer$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultUri:Landroid/net/Uri;

.field private mDisplayType:I

.field private mEditMode:I

.field private final mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mLastWaitingToneVolume:I

.field private final mMaxStreamVolume:I

.field private mOriginalLastAudibleStreamVolume:I

.field private mOriginalNotificationVolume:I

.field private mOriginalRingerMode:I

.field private mOriginalStreamVolume:I

.field private mOriginalSystemVolume:I

.field private mProfileMode:I

.field private final mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mUiHandler:Landroid/preference/SeekBarVolumizer$H;

.field private mVoiceCapable:Z

.field private mVolumeBeforeMute:I

.field private final mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .param p4, "callback"    # Landroid/preference/SeekBarVolumizer$Callback;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v2, -0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v1, Landroid/preference/SeekBarVolumizer$H;

    invoke-direct {v1, p0, v3}, Landroid/preference/SeekBarVolumizer$H;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$1;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    .line 66
    new-instance v1, Landroid/preference/SeekBarVolumizer$Receiver;

    invoke-direct {v1, p0, v3}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$1;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    .line 75
    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 77
    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 78
    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    .line 79
    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 99
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 100
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    .line 106
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    .line 107
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SeekBarVolumizer.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 111
    iput-object p4, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    .line 112
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 113
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_waiting_tone"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    .line 114
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    .line 115
    new-instance v1, Landroid/preference/SeekBarVolumizer$Observer;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Landroid/preference/SeekBarVolumizer$Observer;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    .line 116
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 119
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    invoke-virtual {v1, v6}, Landroid/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 120
    if-nez p3, :cond_0

    .line 121
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v5, :cond_2

    .line 122
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 129
    :cond_0
    :goto_0
    iput-object p3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 130
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v7, :cond_4

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    .line 140
    :cond_1
    :goto_1
    return-void

    .line 123
    :cond_2
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v7, :cond_3

    .line 124
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 126
    :cond_3
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 134
    :cond_4
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v6, :cond_5

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 135
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalSystemVolume:I

    goto :goto_1

    .line 136
    :cond_5
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalLastAudibleStreamVolume:I

    goto :goto_1
.end method

.method static synthetic access$200(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$302(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    return p1
.end method

.method static synthetic access$400(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/preference/SeekBarVolumizer;)I
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 50
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method static synthetic access$600(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    return-object v0
.end method

.method static synthetic access$700(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 430
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 431
    .local v0, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 432
    const-string v1, "SeekBarVolumizer"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    return-object v0
.end method

.method private onInitSample()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 193
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 196
    :cond_0
    return-void
.end method

.method private onStartSample()V
    .locals 5

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v2

    if-nez v2, :cond_2

    .line 206
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v2, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 209
    :cond_0
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v2, :cond_2

    .line 210
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 211
    .local v1, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_3

    .line 213
    :try_start_0
    const-string v2, "SeekBarVolumizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRinging : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v2, "SeekBarVolumizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOffhook : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    :cond_1
    const-string v2, "SeekBarVolumizer"

    const-string v3, "don\'t play ringtone in volumepreference: return called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v1    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_2
    :goto_0
    return-void

    .line 219
    .restart local v1    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SeekBarVolumizer"

    const-string v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_3
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 224
    const-string v2, "SeekBarVolumizer"

    const-string/jumbo v3, "sample : mRingtone.play()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)Z

    .line 226
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method

.method private onStopSample()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 243
    :cond_0
    return-void
.end method

.method private postStartSample()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 199
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 202
    return-void

    .line 200
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private stopToneGenerator()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 366
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 370
    :cond_0
    return-void
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 446
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 447
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 448
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    .line 449
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 450
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 186
    const-string v0, "SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SeekBarVolumizer message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 173
    :pswitch_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 177
    :pswitch_1
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onStartSample()V

    goto :goto_0

    .line 180
    :pswitch_2
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onStopSample()V

    goto :goto_0

    .line 183
    :pswitch_3
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onInitSample()V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public muteVolume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 453
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    .line 454
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 455
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 456
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    .line 457
    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 464
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 460
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 461
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    .line 462
    invoke-virtual {p0, v1}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 10
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 282
    if-nez p3, :cond_0

    .line 361
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v3

    if-nez v3, :cond_4

    .line 286
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v3, v8, :cond_3

    .line 287
    const-string v3, "CTC"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CHM"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 289
    :cond_1
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mDisplayType:I

    if-ne v3, v6, :cond_2

    .line 290
    if-ge p2, v6, :cond_2

    .line 291
    const/4 p2, 0x1

    .line 295
    :cond_2
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 297
    :cond_3
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->startSample()V

    .line 299
    :cond_4
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->stopToneGenerator()V

    .line 300
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v3, v8, :cond_7

    .line 301
    const-string v3, "CTC"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "CHM"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 303
    :cond_5
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mDisplayType:I

    if-ne v3, v6, :cond_6

    .line 304
    if-ge p2, v6, :cond_6

    .line 305
    const/4 p2, 0x1

    .line 309
    :cond_6
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v8, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 310
    invoke-virtual {p0, p2}, Landroid/preference/SeekBarVolumizer;->setSeekBarVolume(I)V

    goto :goto_0

    .line 311
    :cond_7
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v3, v7, :cond_a

    .line 312
    if-nez p2, :cond_8

    .line 313
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7, v5, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 314
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 320
    :goto_1
    invoke-virtual {p0, p2}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0

    .line 315
    :cond_8
    if-eqz p2, :cond_9

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_9

    .line 316
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 318
    :cond_9
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 321
    :cond_a
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v3, v6, :cond_e

    .line 322
    const-string v3, "SeekBarVolumizer"

    const-string v4, "******onProgressChanged*****"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v3, :cond_b

    .line 324
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v3, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 325
    :cond_b
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 327
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 329
    .local v1, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 331
    :cond_c
    const-string v3, "SeekBarVolumizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRinging : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v3, "SeekBarVolumizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOffhook : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v3, "SeekBarVolumizer"

    const-string v4, "don\'t play STREAM_SYSTEM in volumepreference."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_2
    const-string v3, "SeekBarVolumizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProgressChanged : AudioManager.STREAM_SYSTEM["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 336
    :cond_d
    :try_start_1
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0xa

    int-to-float v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 337
    const-string v3, "SeekBarVolumizer"

    const-string/jumbo v4, "sample : playSoundEffect()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SeekBarVolumizer"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 344
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_e
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_10

    .line 345
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "volume_waiting_tone"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 349
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v3, :cond_f

    .line 350
    new-instance v3, Landroid/media/ToneGenerator;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 351
    :cond_f
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-int/lit8 v3, p2, -0x2

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 352
    .local v2, "volFloat":F
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v5, "situation=15;device=0"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 353
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x16

    const/16 v5, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 354
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto/16 :goto_0

    .line 355
    .end local v2    # "volFloat":F
    :cond_10
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v3, v9, :cond_11

    .line 356
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v9, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 357
    invoke-virtual {p0, p2}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto/16 :goto_0

    .line 359
    :cond_11
    invoke-virtual {p0, p2}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto/16 :goto_0
.end method

.method public onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 2
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    .prologue
    .line 474
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 475
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 476
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 477
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 479
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 1
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    .prologue
    .line 467
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 468
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    .line 469
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 471
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 380
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    .line 396
    return-void
.end method

.method postSetVolume(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    const/4 v2, 0x0

    .line 374
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 375
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 377
    return-void
.end method

.method postStopSample()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 234
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    return-void
.end method

.method public revertVolume()V
    .locals 5

    .prologue
    const/16 v4, 0x2000

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 259
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_waiting_tone"

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    :goto_0
    return-void

    .line 261
    :cond_0
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v2, :cond_2

    .line 263
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v1, :cond_1

    .line 264
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 265
    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 268
    :cond_3
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalSystemVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 271
    :cond_4
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    if-nez v0, :cond_6

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v2, :cond_6

    .line 272
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v1, :cond_5

    .line 273
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 274
    :cond_5
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalLastAudibleStreamVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 276
    :cond_6
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0
.end method

.method public setDisplayType(I)V
    .locals 3
    .param p1, "displayType"    # I

    .prologue
    .line 165
    const-string v0, "SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mDisplayType:I

    .line 167
    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v2, -0x1

    .line 146
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 149
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 150
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 151
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-le v0, v2, :cond_0

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 156
    :goto_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 157
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 158
    return-void

    .line 151
    :cond_0
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 154
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-le v0, v2, :cond_2

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    goto :goto_2
.end method

.method public setSeekBarVolume(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 160
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 161
    invoke-virtual {p0, p1}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 162
    return-void
.end method

.method public startSample()V
    .locals 5

    .prologue
    .line 403
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 404
    .local v1, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1

    .line 406
    :try_start_0
    const-string v2, "SeekBarVolumizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRinging : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v2, "SeekBarVolumizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOffhook : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    :cond_0
    const-string v2, "SeekBarVolumizer"

    const-string v3, "don\'t play ringtone in volumepreference: return called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SeekBarVolumizer"

    const-string v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    .line 247
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->stopToneGenerator()V

    .line 248
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 250
    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 252
    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 253
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 254
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 255
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 256
    return-void
.end method

.method public stopSample()V
    .locals 0

    .prologue
    .line 438
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    .line 439
    return-void
.end method
