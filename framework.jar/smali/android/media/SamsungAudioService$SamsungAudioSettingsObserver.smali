.class Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;
.super Landroid/database/ContentObserver;
.source "SamsungAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SamsungAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungAudioSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SamsungAudioService;


# direct methods
.method constructor <init>(Landroid/media/SamsungAudioService;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 206
    iput-object p1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    .line 207
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 210
    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/SamsungAudioService;->access$000(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "def_tactileassist_enable"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 214
    # getter for: Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z
    invoke-static {}, Landroid/media/SamsungAudioService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/SamsungAudioService;->access$000(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hearing_musiccheck"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 216
    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/SamsungAudioService;->access$000(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_alive_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/SamsungAudioService;->access$000(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "k2hd_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/SamsungAudioService;->access$000(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tube_amp_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 221
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 224
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 229
    iget-object v1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$000(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "def_tactileassist_enable"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 230
    .local v0, "nAutoHaptic":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioParam;auto_haptic_enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 234
    # getter for: Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z
    invoke-static {}, Landroid/media/SamsungAudioService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    iget-object v2, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/media/SamsungAudioService;->access$000(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hearing_musiccheck"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    # setter for: Landroid/media/SamsungAudioService;->mMySoundEnabled:I
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$202(Landroid/media/SamsungAudioService;I)I

    .line 236
    iget-object v1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    iget-object v2, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mMySoundEnabled:I
    invoke-static {v2}, Landroid/media/SamsungAudioService;->access$200(Landroid/media/SamsungAudioService;)I

    move-result v2

    # invokes: Landroid/media/SamsungAudioService;->setGlobalMySound(I)V
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$300(Landroid/media/SamsungAudioService;I)V

    .line 237
    iget-object v1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    iget-object v2, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/media/SamsungAudioService;->access$000(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sound_alive_effect"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    # setter for: Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$402(Landroid/media/SamsungAudioService;I)I

    .line 238
    iget-object v1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    iget-object v2, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I
    invoke-static {v2}, Landroid/media/SamsungAudioService;->access$400(Landroid/media/SamsungAudioService;)I

    move-result v2

    # invokes: Landroid/media/SamsungAudioService;->setGlobalSoundAlive(I)V
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$500(Landroid/media/SamsungAudioService;I)V

    .line 239
    iget-object v1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    iget-object v2, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/media/SamsungAudioService;->access$000(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "k2hd_effect"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    # setter for: Landroid/media/SamsungAudioService;->mK2HDEnabled:I
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$602(Landroid/media/SamsungAudioService;I)I

    .line 240
    iget-object v1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    iget-object v2, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mK2HDEnabled:I
    invoke-static {v2}, Landroid/media/SamsungAudioService;->access$600(Landroid/media/SamsungAudioService;)I

    move-result v2

    # invokes: Landroid/media/SamsungAudioService;->setGlobalK2HD(I)V
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$700(Landroid/media/SamsungAudioService;I)V

    .line 241
    iget-object v1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    iget-object v2, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/media/SamsungAudioService;->access$000(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tube_amp_effect"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    # setter for: Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$802(Landroid/media/SamsungAudioService;I)I

    .line 242
    iget-object v1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    iget-object v2, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I
    invoke-static {v2}, Landroid/media/SamsungAudioService;->access$800(Landroid/media/SamsungAudioService;)I

    move-result v2

    # invokes: Landroid/media/SamsungAudioService;->setGlobalTubeAmp(I)V
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$900(Landroid/media/SamsungAudioService;I)V

    .line 245
    :cond_0
    return-void
.end method
