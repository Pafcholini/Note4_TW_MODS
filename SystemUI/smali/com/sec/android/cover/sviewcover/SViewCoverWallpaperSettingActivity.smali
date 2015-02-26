.class public Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;
.super Lcom/sec/android/cover/sviewcover/SViewCoverActivity;
.source "SViewCoverWallpaperSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private CUSTOM_INDEX:I

.field private GALLERY_INDEX:I

.field private WALLPAPER_THUMBNAIL_IMAGE_ID:[I

.field private mOpenPopup:Lcom/sec/android/cover/widget/PopupFrameView;

.field private mPopupLayout:Landroid/view/ViewGroup;

.field private mSelectIndex:I

.field private mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    .line 39
    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mPopupLayout:Landroid/view/ViewGroup;

    .line 40
    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mOpenPopup:Lcom/sec/android/cover/widget/PopupFrameView;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;Lcom/sec/android/cover/widget/PopupFrameView;)Lcom/sec/android/cover/widget/PopupFrameView;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;
    .param p1, "x1"    # Lcom/sec/android/cover/widget/PopupFrameView;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mOpenPopup:Lcom/sec/android/cover/widget/PopupFrameView;

    return-object p1
.end method

.method private checkOpenPopup()Z
    .locals 4

    .prologue
    .line 194
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mPopupLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 195
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "iIdx":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 196
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mPopupLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 197
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/sec/android/cover/widget/PopupFrameView;

    if-eqz v3, :cond_0

    .line 198
    const/4 v3, 0x1

    .line 200
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    return v3

    .line 195
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private drawBackGround()V
    .locals 4

    .prologue
    .line 277
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_wallpaper_root_pattern:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 279
    .local v0, "mRootBackGroundView":Landroid/widget/ImageView;
    if-nez v0, :cond_1

    .line 280
    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->TAG:Ljava/lang/String;

    const-string v3, "mRootBackGroundView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->CUSTOM_INDEX:I

    if-ne v2, v3, :cond_2

    .line 285
    const v2, 0x106000c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    const/16 v2, 0x4d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 287
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getUserWallpaper(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 288
    :cond_2
    iget v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->GALLERY_INDEX:I

    if-eq v2, v3, :cond_0

    .line 291
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getPreloadWallpaperResId(I)I

    move-result v1

    .line 293
    .local v1, "selectedResource":I
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private drawFoucsRect(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 299
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->WALLPAPER_THUMBNAIL_IMAGE_ID:[I

    array-length v2, v3

    .line 300
    .local v2, "length":I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    const/4 v0, 0x0

    .local v0, "iIdx":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 307
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->WALLPAPER_THUMBNAIL_IMAGE_ID:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 309
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    .line 310
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 306
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 314
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->WALLPAPER_THUMBNAIL_IMAGE_ID:[I

    aget v3, v3, p1

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 316
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 317
    sget v3, Lcom/sec/android/sviewcover/R$drawable;->image_border:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0
.end method

.method private initLayout()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 58
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->WALLPAPER_THUMBNAIL_IMAGE_ID:[I

    array-length v6, v8

    .line 61
    .local v6, "length":I
    const/4 v3, 0x0

    .local v3, "iIdx":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$string;->s_view_wallpaper_selected_tts:I

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    add-int/lit8 v11, v3, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "label":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->WALLPAPER_THUMBNAIL_IMAGE_ID:[I

    aget v8, v8, v3

    invoke-virtual {p0, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 66
    .local v4, "imageView":Landroid/widget/ImageView;
    if-eqz v4, :cond_0

    .line 67
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "label":Ljava/lang/CharSequence;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->setCustomThumnailImage()V

    .line 74
    sget v8, Lcom/sec/android/sviewcover/R$id;->s_view_cover_wallpaper_set_button:I

    invoke-virtual {p0, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 75
    .local v7, "setButton":Landroid/widget/Button;
    if-eqz v7, :cond_2

    .line 76
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_2
    sget v8, Lcom/sec/android/sviewcover/R$id;->s_view_cover_wallpaper_cancel_button:I

    invoke-virtual {p0, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 80
    .local v1, "cancelButton":Landroid/widget/Button;
    if-eqz v1, :cond_3

    .line 81
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_3
    sget v8, Lcom/sec/android/sviewcover/R$id;->s_view_color_wallpaper_back_button:I

    invoke-virtual {p0, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 85
    .local v0, "backButton":Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 86
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "wallpaper_initialize"

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 91
    .local v2, "hideCancelButton":Z
    if-ne v2, v13, :cond_8

    .line 92
    if-eqz v1, :cond_5

    .line 93
    invoke-virtual {v1, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    :cond_5
    if-eqz v0, :cond_6

    .line 97
    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    :cond_6
    invoke-virtual {p0, v13}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->needToRemainACtivity(Z)V

    .line 101
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    if-eqz v8, :cond_7

    .line 102
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndexbySkincolor()I

    move-result v8

    iput v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    .line 103
    sget-object v8, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start set wallpaper by skin - wallpaper index = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    invoke-direct {p0, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->drawFoucsRect(I)V

    .line 105
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->drawBackGround()V

    .line 113
    :cond_7
    :goto_1
    sget v8, Lcom/sec/android/sviewcover/R$id;->s_view_cover_color_picker_background:I

    invoke-virtual {p0, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mPopupLayout:Landroid/view/ViewGroup;

    .line 114
    return-void

    .line 108
    :cond_8
    invoke-virtual {p0, v12}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->needToRemainACtivity(Z)V

    .line 109
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndex()I

    move-result v8

    add-int/lit8 v8, v8, -0xa

    invoke-direct {p0, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->drawFoucsRect(I)V

    .line 110
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->setBackGroundImage()V

    goto :goto_1
.end method

.method private isSetupWizardFinished()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setBackGroundImage()V
    .locals 5

    .prologue
    .line 126
    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_wallpaper_root_pattern:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 127
    .local v0, "rootBackGroundView":Landroid/widget/ImageView;
    invoke-static {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v3

    .line 128
    .local v3, "wallpaperManager":Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    const/4 v1, 0x0

    .line 130
    .local v1, "wallpaper":I
    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndex()I

    move-result v1

    .line 133
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 134
    const v4, 0x106000c

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    const/16 v4, 0x4d

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getWallpaperDrawble()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 139
    .local v2, "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 143
    .end local v2    # "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private setCustomThumnailImage()V
    .locals 3

    .prologue
    .line 117
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getUserWallpaper(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 118
    .local v1, "userWallpaperDrawable":Landroid/graphics/drawable/Drawable;
    sget v2, Lcom/sec/android/sviewcover/R$id;->wallpaper_thumnail_custom_image:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 120
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :cond_0
    return-void
.end method

.method private setNewWallaperImage()V
    .locals 4

    .prologue
    .line 252
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    if-eqz v1, :cond_2

    .line 253
    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    iget v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->CUSTOM_INDEX:I

    if-ne v1, v2, :cond_0

    .line 254
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    const/4 v2, 0x2

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->setWallaper(II)V

    .line 256
    :cond_0
    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    iget v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->GALLERY_INDEX:I

    if-ne v1, v2, :cond_1

    .line 274
    :goto_0
    return-void

    .line 259
    :cond_1
    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    iget v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->CUSTOM_INDEX:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    iget v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->GALLERY_INDEX:I

    if-eq v1, v2, :cond_2

    .line 260
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->setWallaper(II)V

    .line 264
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 265
    .local v0, "handlerTimer":Landroid/os/Handler;
    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showOpenTogalleryPopup()V
    .locals 4

    .prologue
    .line 241
    new-instance v0, Lcom/sec/android/cover/widget/PopupFrameView;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/PopupFrameView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mOpenPopup:Lcom/sec/android/cover/widget/PopupFrameView;

    .line 242
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mOpenPopup:Lcom/sec/android/cover/widget/PopupFrameView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mPopupLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/cover/widget/PopupFrameView;->show(Landroid/view/ViewGroup;Ljava/lang/String;Z)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mOpenPopup:Lcom/sec/android/cover/widget/PopupFrameView;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PopupFrameView;->setOnCloseListener(Lcom/sec/android/cover/widget/PopupFrameView$OnCloseListener;)V

    .line 249
    return-void
.end method


# virtual methods
.method protected coverCloseEvent()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->coverCloseEvent()V

    .line 148
    return-void
.end method

.method protected coverOpenEvent()V
    .locals 8

    .prologue
    const/high16 v7, 0x10000000

    const/4 v6, 0x1

    .line 152
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->isSetupWizardFinished()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->checkOpenPopup()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    invoke-static {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getCustomWallpaperFilePathName()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 158
    .local v3, "wallpaperUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v4, "com.sec.android.gallery3d"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v4, "crop"

    const-string v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v4, "output"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 163
    const-string v4, "aspectX"

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowWidth()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-string v4, "aspectY"

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowHeight()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    const-string v4, "scale"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string v4, "set_sview"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 169
    :try_start_0
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "wallpaperUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->coverOpenEvent()V

    .line 191
    return-void

    .line 170
    .restart local v1    # "filePath":Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "wallpaperUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->TAG:Ljava/lang/String;

    const-string v5, "ActivityNotFoundException !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "wallpaperUri":Landroid/net/Uri;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 175
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isHProjectVariant()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.SViewColor"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    :goto_1
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    :try_start_1
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    .line 185
    .restart local v0    # "exception":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->TAG:Ljava/lang/String;

    const-string v5, "ActivityNotFoundException !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    :cond_2
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.SViewColor2014"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected getUserWallpaper(Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "isThumbnail"    # Z

    .prologue
    .line 323
    invoke-static {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v0

    .line 324
    .local v0, "wallpaperManager":Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getCustomWallpaperDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mOpenPopup:Lcom/sec/android/cover/widget/PopupFrameView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mOpenPopup:Lcom/sec/android/cover/widget/PopupFrameView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/PopupFrameView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mOpenPopup:Lcom/sec/android/cover/widget/PopupFrameView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/PopupFrameView;->close()V

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 214
    .local v2, "viewId":I
    sget v3, Lcom/sec/android/sviewcover/R$id;->wallpaper_thumnail_gallery:I

    if-ne v2, v3, :cond_1

    .line 215
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->showOpenTogalleryPopup()V

    .line 216
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->GALLERY_INDEX:I

    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    .line 235
    :goto_0
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    invoke-direct {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->drawFoucsRect(I)V

    .line 237
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->drawBackGround()V

    .line 238
    return-void

    .line 217
    :cond_1
    sget v3, Lcom/sec/android/sviewcover/R$id;->s_view_cover_wallpaper_set_button:I

    if-ne v2, v3, :cond_2

    .line 218
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->setNewWallaperImage()V

    goto :goto_0

    .line 219
    :cond_2
    sget v3, Lcom/sec/android/sviewcover/R$id;->s_view_cover_wallpaper_cancel_button:I

    if-ne v2, v3, :cond_3

    .line 220
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->finish()V

    goto :goto_0

    .line 221
    :cond_3
    sget v3, Lcom/sec/android/sviewcover/R$id;->s_view_color_wallpaper_back_button:I

    if-ne v2, v3, :cond_4

    .line 222
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->finish()V

    goto :goto_0

    .line 224
    :cond_4
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->WALLPAPER_THUMBNAIL_IMAGE_ID:[I

    array-length v1, v3

    .line 225
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "iIdx":I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 226
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->WALLPAPER_THUMBNAIL_IMAGE_ID:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_6

    .line 227
    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    .line 232
    :cond_5
    sget-object v3, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->TAG:Ljava/lang/String;

    const-string v4, "not found thumbnail image id"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v0, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_wallpaper_activity:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$array;->s_view_cover_default_wallpaper_thumbnail_id_list:I

    invoke-static {v0, v1}, Lcom/sec/android/cover/CoverUtils;->getResourceArray(Landroid/content/Context;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->WALLPAPER_THUMBNAIL_IMAGE_ID:[I

    .line 50
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$integer;->sview_cover_wallpaper_custom_index:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->CUSTOM_INDEX:I

    .line 51
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$integer;->sview_cover_wallpaper_gallery_index:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->GALLERY_INDEX:I

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    .line 54
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->initLayout()V

    .line 55
    return-void
.end method
