.class Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity$1;
.super Ljava/lang/Object;
.source "SViewCoverWallpaperSettingActivity.java"

# interfaces
.implements Lcom/sec/android/cover/widget/PopupFrameView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->showOpenTogalleryPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/sec/android/cover/widget/PopupFrameView;)V
    .locals 2
    .param p1, "popupView"    # Lcom/sec/android/cover/widget/PopupFrameView;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mOpenPopup:Lcom/sec/android/cover/widget/PopupFrameView;
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->access$002(Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;Lcom/sec/android/cover/widget/PopupFrameView;)Lcom/sec/android/cover/widget/PopupFrameView;

    .line 247
    return-void
.end method
