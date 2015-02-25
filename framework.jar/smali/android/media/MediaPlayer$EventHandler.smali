.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3326
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 3327
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3328
    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3329
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3333
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mNativeContext:J
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$500(Landroid/media/MediaPlayer;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 3334
    const-string v8, "MediaPlayer"

    const-string/jumbo v9, "mediaplayer went away with unhandled events"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 3337
    :cond_1
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 3570
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown message type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3339
    :sswitch_1
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$600(Landroid/media/MediaPlayer;)V

    .line 3340
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3341
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 3345
    :sswitch_2
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 3346
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3347
    :cond_2
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;Z)V

    .line 3349
    # getter for: Landroid/media/MediaPlayer;->MMFWContextAware:Z
    invoke-static {}, Landroid/media/MediaPlayer;->access$1000()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3350
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareSend:Z
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3351
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const-string v9, "android.intent.action.CONTEXT_AWARE_MUSIC_INFO"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "TYPE"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "complete"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "URI"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-object v12, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareUri:Ljava/lang/String;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "ID"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    iget-object v12, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    # invokes: Landroid/media/MediaPlayer;->sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z
    invoke-static {v8, v9, v10}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3352
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendBroadcast CONTEXT_AWARE_MUSIC_INFO - type(complete) - id("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3361
    :sswitch_3
    :try_start_0
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3362
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3364
    :catch_0
    move-exception v1

    .line 3365
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v8, "MediaPlayer"

    const-string v9, "handleMessage MEDIA_STOPPED e : "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3378
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :sswitch_4
    :try_start_1
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3379
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v9

    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x7

    if-ne v8, v10, :cond_3

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3381
    :catch_1
    move-exception v1

    .line 3382
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    const-string v8, "MediaPlayer"

    const-string v9, "handleMessage MEDIA_STARTED or MEDIA_PAUSED e : "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3379
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 3392
    :sswitch_5
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3393
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v8, v9, v10}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    goto/16 :goto_0

    .line 3397
    :sswitch_6
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 3398
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 3405
    :cond_4
    :sswitch_7
    :try_start_2
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3406
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 3408
    :catch_2
    move-exception v1

    .line 3409
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    const-string v8, "MediaPlayer"

    const-string v9, "handleMessage MEDIA_SKIPPED e : "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3419
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :sswitch_8
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 3420
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 3422
    :cond_5
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_7

    iget v8, p1, Landroid/os/Message;->arg2:I

    if-eqz v8, :cond_7

    .line 3424
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v9, 0x1

    # setter for: Landroid/media/MediaPlayer;->mIsVideo:Z
    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->access$1902(Landroid/media/MediaPlayer;Z)Z

    .line 3425
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mIsStart:Z
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3427
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mAIAContext:Z
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2100(Landroid/media/MediaPlayer;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 3429
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const-string v9, "android.media.IMediaPlayer.videoexist"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    # invokes: Landroid/media/MediaPlayer;->sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z
    invoke-static {v8, v9, v10}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3430
    const-string v8, "MediaPlayer"

    const-string/jumbo v9, "sendBroadcast android.media.IMediaPlayer.videoexist"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3433
    :cond_6
    const-string v8, "MediaPlayer"

    const-string v9, "context is 1, don\'t send BroadcastIntent!!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3437
    :cond_7
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Don\'t send intent. msg.arg1 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", msg.arg2 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3442
    :sswitch_9
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    const/4 v2, 0x0

    .line 3444
    .local v2, "error_was_handled":Z
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 3448
    iget v8, p1, Landroid/os/Message;->arg2:I

    const/16 v9, -0x31

    if-eq v8, v9, :cond_8

    iget v8, p1, Landroid/os/Message;->arg2:I

    const/16 v9, -0x3c

    if-eq v8, v9, :cond_8

    iget v8, p1, Landroid/os/Message;->arg2:I

    const/16 v9, -0x3d

    if-eq v8, v9, :cond_8

    iget v8, p1, Landroid/os/Message;->arg2:I

    const/16 v9, -0x40

    if-ne v8, v9, :cond_c

    :cond_8
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 3454
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_b

    .line 3455
    const-string v9, "MediaPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PlayReadyAcquistion Failed \n sending onPlayReadyError "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-interface {v9, v10, v11, v12, v8}, Landroid/media/MediaPlayer$OnPlayReadyErrorListener;->onPlayReadyError(Landroid/media/MediaPlayer;IILjava/lang/String;)Z

    move-result v2

    .line 3477
    :cond_9
    :goto_2
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v8

    if-eqz v8, :cond_a

    if-nez v2, :cond_a

    .line 3478
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3480
    :cond_a
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;Z)V

    goto/16 :goto_0

    .line 3459
    :cond_b
    const-string v8, "MediaPlayer"

    const-string v9, "PlayReadyAcquistion Failed \n sending onPlayReadyError NULL"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v2

    goto :goto_2

    .line 3464
    :cond_c
    iget v8, p1, Landroid/os/Message;->arg2:I

    const/16 v9, 0x12c

    if-ne v8, v9, :cond_d

    .line 3465
    const-string v8, "MediaPlayer"

    const-string v9, "License Not Found, propagate error to MoviePlaybackService.java"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v2

    goto :goto_2

    .line 3469
    :cond_d
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v2

    goto :goto_2

    .line 3484
    .end local v2    # "error_was_handled":Z
    :sswitch_a
    iget v8, p1, Landroid/os/Message;->arg1:I

    sparse-switch v8, :sswitch_data_1

    .line 3501
    :cond_e
    :goto_3
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3502
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 3486
    :sswitch_b
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Info ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3489
    :sswitch_c
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$600(Landroid/media/MediaPlayer;)V

    .line 3493
    :sswitch_d
    const/16 v8, 0x322

    iput v8, p1, Landroid/os/Message;->arg1:I

    .line 3495
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 3496
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto :goto_3

    .line 3507
    :sswitch_e
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3509
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v8, :cond_f

    .line 3510
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    .line 3512
    :cond_f
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Landroid/os/Parcel;

    if-eqz v8, :cond_0

    .line 3513
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Parcel;

    .line 3514
    .local v4, "parcel":Landroid/os/Parcel;
    new-instance v5, Landroid/media/TimedText;

    invoke-direct {v5, v4}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .line 3515
    .local v5, "text":Landroid/media/TimedText;
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 3516
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9, v5}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    .line 3522
    .end local v4    # "parcel":Landroid/os/Parcel;
    .end local v5    # "text":Landroid/media/TimedText;
    :sswitch_f
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3525
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Landroid/os/Parcel;

    if-eqz v8, :cond_0

    .line 3526
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Parcel;

    .line 3527
    .restart local v4    # "parcel":Landroid/os/Parcel;
    new-instance v0, Landroid/media/SubtitleData;

    invoke-direct {v0, v4}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .line 3528
    .local v0, "data":Landroid/media/SubtitleData;
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 3529
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9, v0}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    goto/16 :goto_0

    .line 3537
    .end local v0    # "data":Landroid/media/SubtitleData;
    .end local v4    # "parcel":Landroid/os/Parcel;
    :sswitch_10
    # getter for: Landroid/media/MediaPlayer;->MMFWContextAware:Z
    invoke-static {}, Landroid/media/MediaPlayer;->access$1000()Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Landroid/os/Parcel;

    if-eqz v8, :cond_11

    .line 3538
    const-string v8, "MediaPlayer"

    const-string/jumbo v9, "send context aware event"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Parcel;

    .line 3540
    .restart local v4    # "parcel":Landroid/os/Parcel;
    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3541
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3542
    .local v7, "uri":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3544
    .local v3, "id":I
    const-string/jumbo v8, "start"

    invoke-virtual {v6, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_10

    .line 3545
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v9, 0x1

    # setter for: Landroid/media/MediaPlayer;->mContextAwareSend:Z
    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->access$1102(Landroid/media/MediaPlayer;Z)Z

    .line 3546
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # setter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v8, v3}, Landroid/media/MediaPlayer;->access$1302(Landroid/media/MediaPlayer;I)I

    .line 3547
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # setter for: Landroid/media/MediaPlayer;->mContextAwareUri:Ljava/lang/String;
    invoke-static {v8, v7}, Landroid/media/MediaPlayer;->access$1202(Landroid/media/MediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 3549
    :cond_10
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const-string v9, "android.intent.action.CONTEXT_AWARE_MUSIC_INFO"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "TYPE"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v11, 0x2

    const-string v12, "URI"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v7, v10, v11

    const/4 v11, 0x4

    const-string v12, "ID"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    # invokes: Landroid/media/MediaPlayer;->sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z
    invoke-static {v8, v9, v10}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3550
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 3551
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendBroadcast CONTEXT_AWARE_MUSIC_INFO - type("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") - id ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    .end local v3    # "id":I
    .end local v4    # "parcel":Landroid/os/Parcel;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "uri":Ljava/lang/String;
    :cond_11
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mPendingCommand:I
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2700(Landroid/media/MediaPlayer;)I

    move-result v8

    if-eqz v8, :cond_0

    .line 3555
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mPendingCommand:I
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2700(Landroid/media/MediaPlayer;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_12

    .line 3556
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const-string v9, "android.intent.action.CONTEXT_AWARE_MUSIC_INFO"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "TYPE"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "pause"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "URI"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-object v12, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareUri:Ljava/lang/String;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "ID"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    iget-object v12, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    # invokes: Landroid/media/MediaPlayer;->sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z
    invoke-static {v8, v9, v10}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3557
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendBroadcast CONTEXT_AWARE_MUSIC_INFO - type(pause) - id("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    :goto_4
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    # setter for: Landroid/media/MediaPlayer;->mPendingCommand:I
    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->access$2702(Landroid/media/MediaPlayer;I)I

    .line 3564
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    # setter for: Landroid/media/MediaPlayer;->mContextAwareSend:Z
    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->access$1102(Landroid/media/MediaPlayer;Z)Z

    goto/16 :goto_0

    .line 3560
    :cond_12
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const-string v9, "android.intent.action.CONTEXT_AWARE_MUSIC_INFO"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "TYPE"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "stop"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "URI"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-object v12, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareUri:Ljava/lang/String;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "ID"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    iget-object v12, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    # invokes: Landroid/media/MediaPlayer;->sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z
    invoke-static {v8, v9, v10}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3561
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendBroadcast CONTEXT_AWARE_MUSIC_INFO - type(stop) - id("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3337
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_8
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_7
        0x63 -> :sswitch_e
        0x64 -> :sswitch_9
        0xc8 -> :sswitch_a
        0xc9 -> :sswitch_f
        0x12c -> :sswitch_10
    .end sparse-switch

    .line 3484
    :sswitch_data_1
    .sparse-switch
        0x2bc -> :sswitch_b
        0x322 -> :sswitch_c
        0x323 -> :sswitch_d
    .end sparse-switch
.end method
