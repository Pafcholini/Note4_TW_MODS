.class public Landroid/media/SamsungAudioManager;
.super Ljava/lang/Object;
.source "SamsungAudioManager.java"


# static fields
.field public static final BACKGROUND_MUSIC_ID_WIZARD:I = 0x0

.field public static final MYSPACE_EFFECT_CENTER_TO_RIGHT:I = 0x1

.field public static final MYSPACE_EFFECT_DELAY:I = 0x32

.field public static final MYSPACE_EFFECT_DIRECT_LEFT_TO_CENTER:I = 0x2

.field public static final MYSPACE_EFFECT_LEFT_TO_CENTER:I = 0x0

.field public static final MYSPACE_EFFECT_MAX_TIMED_OUT:I = 0x5dc

.field public static final MYSPACE_EFFECT_TIMED_OUT:I = 0x3e8

.field public static final MYSPACE_FADEIN_FOR_MUSIC:I = 0x2

.field public static final MYSPACE_FADEOUT_FOR_NOTIFICATION:I = 0x0

.field public static final MYSPACE_FADEOUT_FOR_RINGTONE:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "SamsungAudioManager"

    sput-object v0, Landroid/media/SamsungAudioManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/media/SamsungAudioManager;->mContext:Landroid/content/Context;

    .line 34
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 35
    return-void
.end method


# virtual methods
.method public playMySpaceEffect(I)I
    .locals 4
    .param p1, "effectType"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    const-string/jumbo v3, "persist.audio.globaleffect"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v0, v2

    .line 54
    .local v0, "GLOBAL_EFFECT_ENABLED":Z
    :goto_0
    if-nez v0, :cond_1

    .line 66
    :goto_1
    return v1

    .end local v0    # "GLOBAL_EFFECT_ENABLED":Z
    :cond_0
    move v0, v1

    .line 53
    goto :goto_0

    .line 57
    .restart local v0    # "GLOBAL_EFFECT_ENABLED":Z
    :cond_1
    if-nez p1, :cond_3

    .line 58
    const-string v1, "audioEffectParam;setMySpaceEffectType=1"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 66
    :cond_2
    :goto_2
    const/16 v1, 0x3e8

    goto :goto_1

    .line 59
    :cond_3
    if-ne p1, v2, :cond_4

    .line 60
    const-string v1, "audioEffectParam;setMySpaceEffectType=1"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 61
    const-string v1, "audioEffectParam;setMySpaceEffectType=0"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_2

    .line 62
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 63
    const-string v1, "audioEffectParam;setMySpaceEffectType=0"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 64
    const-string v1, "audioEffectParam;setMySpaceEffectType=2"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_2
.end method
