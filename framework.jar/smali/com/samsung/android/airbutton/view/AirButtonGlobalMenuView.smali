.class public Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;
.super Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;
.source "AirButtonGlobalMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;
    }
.end annotation


# static fields
.field private static final FOCUS_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/Air_Command_Hover_Focus.ogg"

.field private static final HAS_PENWINDOW_H:Z

.field public static final PRODUCT_NAME:Ljava/lang/String;

.field private static mDescriptionSize:I

.field private static mDescriptionSmallSize:I

.field private static mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

.field private static sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

.field private static sCenterImage:Landroid/widget/ImageView;

.field private static sDescriptionViews:[Landroid/widget/TextView;

.field private static sFocusSoundId:I

.field private static sFocusedImage:Landroid/widget/ImageView;

.field private static sMenuImages:[Landroid/widget/ImageView;


# instance fields
.field private CENTER_IMAGE_DURATION:I

.field private DESCRIPTION_DURATION:I

.field private FOCUS_DURATION:I

.field private MENU_ICON_DURATION:I

.field private MENU_ICON_INTERVAL:I

.field private START_DELAY:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAppCount:I

.field private mBgHalfSize:F

.field private mCenterX:F

.field private mCenterY:F

.field private mHelpPopupLayout:Landroid/widget/LinearLayout;

.field private mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

.field private mHideFocusAnimation:Landroid/animation/ObjectAnimator;

.field private mIsTalkbackEnabled:Z

.field private mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

.field private mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

.field private mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

.field private mShowFocusAnimation:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 54
    sput-object v2, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    .line 55
    sput-object v2, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    .line 56
    sput-object v2, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    .line 57
    sput-object v2, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    .line 58
    sput-object v2, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    .line 59
    sput v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSize:I

    .line 60
    sput v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSmallSize:I

    .line 86
    const/4 v1, -0x1

    sput v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusSoundId:I

    .line 87
    sput-object v2, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    .line 96
    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->PRODUCT_NAME:Ljava/lang/String;

    .line 97
    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "ha3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "h3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;
    .param p3, "attrs"    # Lcom/samsung/android/airbutton/Attributes;
    .param p4, "isSpenDetached"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    .line 61
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    .line 62
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    .line 63
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    .line 64
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 65
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    .line 66
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    .line 72
    const/16 v5, 0xc8

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    .line 73
    const/16 v5, 0x32

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_INTERVAL:I

    .line 74
    const/16 v5, 0x78

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_DURATION:I

    .line 75
    const/16 v5, 0xc8

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->CENTER_IMAGE_DURATION:I

    .line 76
    const/16 v5, 0xc8

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->FOCUS_DURATION:I

    .line 77
    const/16 v5, 0x96

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->DESCRIPTION_DURATION:I

    .line 78
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 79
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 80
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 81
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    .line 82
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    .line 83
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    .line 84
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    .line 104
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    .line 106
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sAirbuttonSounds:Landroid/media/SoundPool;

    if-nez v5, :cond_0

    .line 107
    new-instance v5, Landroid/media/SoundPool;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sAirbuttonSounds:Landroid/media/SoundPool;

    .line 109
    :cond_0
    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusSoundId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 110
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sAirbuttonSounds:Landroid/media/SoundPool;

    const-string v6, "/system/media/audio/ui/Air_Command_Hover_Focus.ogg"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusSoundId:I

    .line 112
    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusSoundId:I

    if-nez v5, :cond_1

    .line 113
    const-string v5, "AriButtonGlobalMenuView"

    const-string v6, "failed to load sound from /system/media/audio/ui/Air_Command_Hover_Focus.ogg"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    if-nez v5, :cond_2

    .line 117
    new-instance v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    invoke-direct {v5, p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;-><init>(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)V

    sput-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    .line 119
    :cond_2
    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 120
    const/4 v5, 0x5

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    .line 128
    :cond_3
    :goto_0
    sget-boolean v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-nez v5, :cond_4

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_4

    .line 130
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "do_not_show_guidepopup_gac"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_8

    .line 131
    iget v5, p3, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 132
    iget v5, p3, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p3, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    .line 144
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->createViews()V

    .line 146
    sget-boolean v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v5, :cond_a

    .line 198
    :cond_5
    :goto_2
    return-void

    .line 121
    :cond_6
    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 122
    sget-boolean v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v5, :cond_7

    .line 123
    const/4 v5, 0x5

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    goto :goto_0

    .line 125
    :cond_7
    const/4 v5, 0x4

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    goto :goto_0

    .line 133
    :cond_8
    if-eqz p4, :cond_4

    .line 134
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 135
    iget v5, p3, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 136
    iget v5, p3, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    div-int/lit8 v5, v5, 0x2

    const/high16 v6, 0x42e80000    # 116.0f

    iget v7, p3, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, p3, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    goto :goto_1

    .line 138
    :cond_9
    iget v5, p3, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 139
    iget v5, p3, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    div-int/lit8 v5, v5, 0x2

    const/high16 v6, 0x42a40000    # 82.0f

    iget v7, p3, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, p3, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    goto :goto_1

    .line 150
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "do_not_show_guidepopup_gac"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_5

    .line 151
    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    if-eqz p4, :cond_d

    .line 152
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-nez v5, :cond_c

    .line 153
    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 154
    .local v1, "mInflater":Landroid/view/LayoutInflater;
    if-eqz v1, :cond_b

    .line 155
    const v5, 0x1090069

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    .line 156
    :cond_b
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_c

    .line 157
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    .line 160
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    .end local v1    # "mInflater":Landroid/view/LayoutInflater;
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_c
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "do_not_show_guidepopup_gac"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 164
    :cond_d
    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 165
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    if-nez v5, :cond_f

    .line 166
    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 167
    .local v2, "mInflater2":Landroid/view/LayoutInflater;
    if-eqz v2, :cond_e

    .line 168
    const v5, 0x109006a

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    .line 169
    :cond_e
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_f

    .line 170
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 171
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 172
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    .line 173
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 175
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    const v6, 0x102039c

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 176
    .local v0, "img":Landroid/widget/Button;
    new-instance v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$1;-><init>(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    const v6, 0x102039b

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 186
    .local v4, "textView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v6, 0x1040781

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .end local v0    # "img":Landroid/widget/Button;
    .end local v2    # "mInflater2":Landroid/view/LayoutInflater;
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_f
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "do_not_show_guidepopup_gac"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustCenterPosition()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 343
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 344
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x1050130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    .line 345
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    .line 346
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    .line 348
    const/4 v0, 0x0

    .line 353
    .local v0, "cocktailBarWidth":I
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    .line 354
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    .line 358
    :cond_0
    :goto_0
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 359
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    .line 362
    :cond_1
    :goto_1
    return-void

    .line 355
    :cond_2
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 356
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    goto :goto_0

    .line 360
    :cond_3
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    goto :goto_1
.end method

.method private checkTalkbackEnable()Z
    .locals 4

    .prologue
    .line 936
    const/4 v1, 0x0

    .line 937
    .local v1, "talkbackEnabled":Z
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 940
    const-string v2, "(?i).*talkback.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 943
    :cond_0
    return v1
.end method

.method private createViews()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0xf5

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 201
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 202
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 204
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 207
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->checkTalkbackEnable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    .line 210
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    if-nez v4, :cond_1

    .line 211
    new-instance v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    .line 212
    :cond_1
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v4, v2}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-boolean v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    if-eqz v4, :cond_2

    .line 214
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v4, v11}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->setFocusable(Z)V

    .line 215
    :cond_2
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {p0, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    .line 218
    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v4, v9, :cond_4

    .line 219
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    if-nez v4, :cond_3

    .line 220
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    .line 221
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const v5, 0x10800dc

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 222
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const v5, 0x10800db

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    :cond_3
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    .line 229
    :cond_4
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    if-nez v4, :cond_5

    .line 230
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    .line 231
    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v4, v8, :cond_6

    .line 232
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const v5, 0x10800dd

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    :cond_5
    :goto_0
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    .line 240
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    if-nez v4, :cond_8

    .line 241
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    new-array v4, v4, [Landroid/widget/ImageView;

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    .line 242
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    if-ge v0, v4, :cond_7

    .line 243
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 234
    .end local v0    # "idx":I
    :cond_6
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const v5, 0x10800de

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 245
    .restart local v0    # "idx":I
    :cond_7
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v7

    const v5, 0x10800e4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v4, v8, :cond_9

    .line 247
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v11

    const v5, 0x10800e3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v8

    const v5, 0x10800e0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v9

    const v5, 0x10800e1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const v5, 0x10800e2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    .end local v0    # "idx":I
    :cond_8
    :goto_2
    const/4 v0, 0x0

    .restart local v0    # "idx":I
    :goto_3
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    if-ge v0, v4, :cond_a

    .line 263
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 251
    :cond_9
    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v4, v9, :cond_8

    .line 252
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v11

    const v5, 0x10800e3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v8

    const v5, 0x10800df

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v9

    const v5, 0x10800e0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    sget-boolean v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v4, :cond_8

    .line 257
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const v5, 0x10800e2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 268
    :cond_a
    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v4, v8, :cond_c

    .line 269
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    if-nez v4, :cond_b

    .line 270
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    .line 271
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const v5, 0x10800dc

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 272
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const v5, 0x10800db

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    :cond_b
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    .line 279
    :cond_c
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    if-nez v4, :cond_d

    .line 280
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Landroid/widget/TextView;

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    .line 281
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 282
    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x1050134

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSize:I

    .line 283
    const v4, 0x1050135

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSmallSize:I

    .line 285
    const/4 v0, 0x0

    :goto_4
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    add-int/lit8 v4, v4, 0x1

    if-ge v0, v4, :cond_d

    .line 286
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v0

    .line 289
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 290
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    .line 291
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 295
    .end local v3    # "r":Landroid/content/res/Resources;
    :cond_d
    const-string/jumbo v4, "sans-serif-light"

    invoke-static {v4, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 296
    .local v1, "light":Landroid/graphics/Typeface;
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    const v5, 0x1040777

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 297
    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v4, v8, :cond_e

    .line 298
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v11

    const v5, 0x1040778

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 299
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    const v5, 0x1040779

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 300
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v9

    const v5, 0x104077a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 301
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const v5, 0x104077c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 302
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    aget-object v4, v4, v5

    const v5, 0x104077f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 304
    const/4 v0, 0x0

    :goto_5
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    add-int/lit8 v4, v4, 0x1

    if-ge v0, v4, :cond_10

    .line 305
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 306
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 307
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    const/16 v5, 0xff

    invoke-static {v5, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 311
    :cond_e
    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v4, v9, :cond_10

    .line 312
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v11

    const v5, 0x104077e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 313
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    const v5, 0x104077d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 314
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v9

    const v5, 0x1040779

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 315
    sget-boolean v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v4, :cond_f

    .line 316
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const v5, 0x104077c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 317
    :cond_f
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    aget-object v4, v4, v5

    const v5, 0x104077f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 320
    const/4 v0, 0x0

    :goto_6
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    add-int/lit8 v4, v4, 0x1

    if-ge v0, v4, :cond_10

    .line 321
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 322
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 325
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    const/16 v5, 0xff

    invoke-static {v5, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 334
    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->adjustCenterPosition()V

    .line 335
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->setAllViewDelta()V

    .line 337
    iget-boolean v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    if-eqz v4, :cond_11

    .line 338
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 340
    :cond_11
    return-void
.end method

.method private getAngle(DD)D
    .locals 9
    .param p1, "pointX"    # D
    .param p3, "pointY"    # D

    .prologue
    const-wide/16 v6, 0x0

    .line 925
    div-double v2, p3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v2, v4

    .line 927
    .local v0, "angle":D
    cmpg-double v2, p1, v6

    if-gez v2, :cond_1

    .line 928
    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v0, v2

    .line 932
    :cond_0
    :goto_0
    return-wide v0

    .line 929
    :cond_1
    cmpg-double v2, p3, v6

    if-gez v2, :cond_0

    .line 930
    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method private getDistanceFromCenter(DD)D
    .locals 11
    .param p1, "pointX"    # D
    .param p3, "pointY"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 921
    move-object v1, p0

    move-wide v4, v2

    move-wide v6, p1

    move-wide v8, p3

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getDistance(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private getItemIndex(Landroid/view/MotionEvent;)I
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 871
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    sub-float v0, v4, v5

    .line 872
    .local v0, "adjustedX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    sub-float v1, v4, v5

    .line 874
    .local v1, "adjustedY":F
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    float-to-double v4, v4

    float-to-double v6, v0

    float-to-double v8, v1

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getDistanceFromCenter(DD)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_10

    .line 875
    float-to-double v4, v0

    float-to-double v6, v1

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getAngle(DD)D

    move-result-wide v2

    .line 877
    .local v2, "angle":D
    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 878
    const-wide/16 v4, 0x0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_0

    const-wide v4, 0x4044266666666666L    # 40.3

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_0

    .line 879
    const/4 v4, 0x4

    .line 917
    .end local v2    # "angle":D
    :goto_0
    return v4

    .line 880
    .restart local v2    # "angle":D
    :cond_0
    const-wide v4, 0x4075cccccccccccdL    # 348.8

    cmpg-double v4, v4, v2

    if-gez v4, :cond_1

    const-wide v4, 0x4076800000000000L    # 360.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_1

    .line 881
    const/4 v4, 0x4

    goto :goto_0

    .line 882
    :cond_1
    const-wide v4, 0x406629999999999aL    # 177.3

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_2

    const-wide v4, 0x406b89999999999aL    # 220.3

    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    .line 883
    const/4 v4, 0x0

    goto :goto_0

    .line 884
    :cond_2
    const-wide v4, 0x406b89999999999aL    # 220.3

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_3

    const-wide v4, 0x40707ccccccccccdL    # 263.8

    cmpg-double v4, v2, v4

    if-gez v4, :cond_3

    .line 885
    const/4 v4, 0x1

    goto :goto_0

    .line 886
    :cond_3
    const-wide v4, 0x40707ccccccccccdL    # 263.8

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_4

    const-wide v4, 0x4073200000000000L    # 306.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_4

    .line 887
    const/4 v4, 0x2

    goto :goto_0

    .line 888
    :cond_4
    const-wide v4, 0x4073200000000000L    # 306.0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_10

    const-wide v4, 0x4075cccccccccccdL    # 348.8

    cmpg-double v4, v2, v4

    if-gez v4, :cond_10

    .line 889
    const/4 v4, 0x3

    goto :goto_0

    .line 890
    :cond_5
    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b

    sget-boolean v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v4, :cond_b

    .line 891
    const-wide/16 v4, 0x0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_6

    const-wide v4, 0x4044266666666666L    # 40.3

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_6

    .line 892
    const/4 v4, 0x4

    goto :goto_0

    .line 893
    :cond_6
    const-wide v4, 0x4075cccccccccccdL    # 348.8

    cmpg-double v4, v4, v2

    if-gez v4, :cond_7

    const-wide v4, 0x4076800000000000L    # 360.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_7

    .line 894
    const/4 v4, 0x4

    goto/16 :goto_0

    .line 895
    :cond_7
    const-wide v4, 0x406629999999999aL    # 177.3

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_8

    const-wide v4, 0x406b89999999999aL    # 220.3

    cmpg-double v4, v2, v4

    if-gez v4, :cond_8

    .line 896
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 897
    :cond_8
    const-wide v4, 0x406b89999999999aL    # 220.3

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_9

    const-wide v4, 0x40707ccccccccccdL    # 263.8

    cmpg-double v4, v2, v4

    if-gez v4, :cond_9

    .line 898
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 899
    :cond_9
    const-wide v4, 0x40707ccccccccccdL    # 263.8

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_a

    const-wide v4, 0x4073200000000000L    # 306.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_a

    .line 900
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 901
    :cond_a
    const-wide v4, 0x4073200000000000L    # 306.0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_10

    const-wide v4, 0x4075cccccccccccdL    # 348.8

    cmpg-double v4, v2, v4

    if-gez v4, :cond_10

    .line 902
    const/4 v4, 0x3

    goto/16 :goto_0

    .line 904
    :cond_b
    const-wide/16 v4, 0x0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_c

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_c

    .line 905
    const/4 v4, 0x3

    goto/16 :goto_0

    .line 906
    :cond_c
    const-wide v4, 0x4075900000000000L    # 345.0

    cmpg-double v4, v4, v2

    if-gez v4, :cond_d

    const-wide v4, 0x4076800000000000L    # 360.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_d

    .line 907
    const/4 v4, 0x3

    goto/16 :goto_0

    .line 908
    :cond_d
    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_e

    const-wide v4, 0x406d600000000000L    # 235.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_e

    .line 909
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 910
    :cond_e
    const-wide v4, 0x406d600000000000L    # 235.0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_f

    const-wide v4, 0x4072200000000000L    # 290.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_f

    .line 911
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 912
    :cond_f
    const-wide v4, 0x4072200000000000L    # 290.0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_10

    const-wide v4, 0x4075900000000000L    # 345.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_10

    .line 913
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 917
    .end local v2    # "angle":D
    :cond_10
    const/4 v4, -0x1

    goto/16 :goto_0
.end method

.method private playFocusAnimation(II)V
    .locals 7
    .param p1, "previousIdx"    # I
    .param p2, "currentIdx"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    .line 524
    const v0, -0x3fd33333    # -2.7f

    .line 526
    .local v0, "baseAngle":F
    sget v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v1, v2, :cond_4

    .line 527
    if-ne p2, v6, :cond_1

    .line 528
    const v0, 0x42213333    # 40.3f

    .line 555
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_b

    .line 556
    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 557
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowFocusAnimation()V

    .line 559
    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    invoke-direct {p0, p2, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowDescriptionAnimation(IZ)V

    .line 579
    :goto_1
    return-void

    .line 529
    :cond_1
    if-ne p2, v2, :cond_2

    .line 530
    const v0, 0x42a7999a    # 83.8f

    goto :goto_0

    .line 531
    :cond_2
    if-ne p2, v4, :cond_3

    .line 532
    const/high16 v0, 0x42fc0000    # 126.0f

    goto :goto_0

    .line 533
    :cond_3
    if-ne p2, v3, :cond_0

    .line 534
    const v0, 0x4328cccd    # 168.8f

    goto :goto_0

    .line 535
    :cond_4
    sget v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v1, v4, :cond_8

    sget-boolean v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v1, :cond_8

    .line 536
    const/4 v0, 0x0

    .line 537
    if-ne p2, v6, :cond_5

    .line 538
    const/high16 v0, 0x422c0000    # 43.0f

    goto :goto_0

    .line 539
    :cond_5
    if-ne p2, v2, :cond_6

    .line 540
    const/high16 v0, 0x42ad0000    # 86.5f

    goto :goto_0

    .line 541
    :cond_6
    if-ne p2, v4, :cond_7

    .line 542
    const v0, 0x4300b333    # 128.7f

    goto :goto_0

    .line 543
    :cond_7
    if-ne p2, v3, :cond_0

    .line 544
    const v0, 0x432b8000    # 171.5f

    goto :goto_0

    .line 546
    :cond_8
    const/4 v0, 0x0

    .line 547
    if-ne p2, v6, :cond_9

    .line 548
    const/high16 v0, 0x425c0000    # 55.0f

    goto :goto_0

    .line 549
    :cond_9
    if-ne p2, v2, :cond_a

    .line 550
    const/high16 v0, 0x42dc0000    # 110.0f

    goto :goto_0

    .line 551
    :cond_a
    if-ne p2, v4, :cond_0

    .line 552
    const/high16 v0, 0x43210000    # 161.0f

    goto :goto_0

    .line 562
    :cond_b
    const/4 v1, -0x1

    if-ne p2, v1, :cond_d

    .line 563
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playHideFocusAnimation()V

    .line 565
    if-ltz p1, :cond_c

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    if-ge p1, v1, :cond_c

    .line 566
    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 569
    :cond_c
    invoke-direct {p0, p2, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowDescriptionAnimation(IZ)V

    goto :goto_1

    .line 572
    :cond_d
    invoke-direct {p0, v0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playMoveFocusAnimation(F)V

    .line 574
    if-ltz p1, :cond_e

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    if-ge p1, v1, :cond_e

    .line 575
    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    :cond_e
    invoke-direct {p0, p2, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowDescriptionAnimation(IZ)V

    goto :goto_1
.end method

.method private playFocusSound()V
    .locals 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 947
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsSpenSoundOn:Z

    if-nez v0, :cond_0

    .line 951
    :goto_0
    return-void

    .line 949
    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sAirbuttonSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mStreamSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 950
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sAirbuttonSounds:Landroid/media/SoundPool;

    sget v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusSoundId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mStreamSoundId:I

    goto :goto_0
.end method

.method private playHideDescriptionAnimation(I)V
    .locals 8
    .param p1, "viewIdx"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 677
    if-lt p1, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    if-gt v0, p1, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 681
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 683
    :cond_2
    if-ne p1, v1, :cond_3

    .line 684
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    aget-object v0, v0, v1

    const-string v1, "alpha"

    new-array v2, v2, [F

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getAlpha()F

    move-result v3

    aput v3, v2, v6

    aput v5, v2, v7

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    .line 687
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->DESCRIPTION_DURATION:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 688
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 686
    :cond_3
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const-string v1, "alpha"

    new-array v2, v2, [F

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/widget/TextView;->getAlpha()F

    move-result v3

    aput v3, v2, v6

    aput v5, v2, v7

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    goto :goto_1
.end method

.method private playHideFocusAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 594
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 597
    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 600
    :cond_1
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 601
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->FOCUS_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 602
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 603
    return-void
.end method

.method private playMoveFocusAnimation(F)V
    .locals 6
    .param p1, "targetAngle"    # F

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 606
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 609
    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 612
    :cond_1
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const-string/jumbo v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRotation()F

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 613
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->FOCUS_DURATION:I

    add-int/lit8 v1, v1, -0x32

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 614
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 616
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playFocusSound()V

    .line 617
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v0, v5, :cond_2

    sget-boolean v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-nez v0, :cond_2

    .line 618
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    invoke-virtual {v0, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->playVibrator(I)V

    .line 619
    :cond_2
    return-void
.end method

.method private playShowDescriptionAnimation(IZ)V
    .locals 5
    .param p1, "viewIdx"    # I
    .param p2, "isStartGAC"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, -0x1

    .line 622
    if-lt p1, v4, :cond_0

    iget v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    if-gt v0, p1, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 628
    :cond_2
    if-ne p1, v4, :cond_4

    .line 629
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    aget-object v0, v0, v1

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    .line 630
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;-><init>(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 647
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->DESCRIPTION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 670
    :goto_1
    if-ne p1, v4, :cond_3

    if-eqz p2, :cond_3

    .line 671
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 673
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 649
    :cond_4
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    .line 650
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$3;-><init>(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 667
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->DESCRIPTION_DURATION:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_1

    .line 629
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 649
    :array_1
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private playShowFocusAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 582
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 585
    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 588
    :cond_1
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 589
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->FOCUS_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 590
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 591
    return-void
.end method

.method private setAllViewDelta()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/high16 v10, 0x40000000    # 2.0f

    .line 365
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 367
    .local v6, "r":Landroid/content/res/Resources;
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    iget v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->setX(F)V

    .line 368
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    iget v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->setY(F)V

    .line 370
    const v7, 0x105012e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 371
    .local v4, "focusedImageWidht":I
    const v7, 0x105012f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 373
    .local v3, "focusedImageHeight":I
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    int-to-float v9, v4

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

    .line 375
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    int-to-float v9, v3

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setY(F)V

    .line 376
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    int-to-float v8, v4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 377
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    int-to-float v8, v3

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 379
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_0
    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    if-ge v5, v7, :cond_0

    .line 380
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 379
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 382
    :cond_0
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v9, 0x1050124

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const v9, 0x105011e

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

    .line 384
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    const v9, 0x1050125

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const v9, 0x105011f

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setY(F)V

    .line 386
    sget v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-eq v7, v11, :cond_1

    sget-boolean v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v7, :cond_3

    .line 387
    :cond_1
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v14

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v9, 0x1050126

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const v9, 0x1050120

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

    .line 392
    :goto_1
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v14

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    const v9, 0x1050127

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const v9, 0x1050121

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setY(F)V

    .line 394
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v11

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v9, 0x1050128

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

    .line 395
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v11

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    const v9, 0x1050129

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const v9, 0x1050122

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setY(F)V

    .line 397
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v9, 0x105012a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

    .line 398
    sget v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-eq v7, v11, :cond_2

    sget-boolean v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v7, :cond_4

    .line 399
    :cond_2
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    const v9, 0x105012b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const v9, 0x1050123

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setY(F)V

    .line 401
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v12

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v9, 0x105012c

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

    .line 402
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v12

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    const v9, 0x105012d

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setY(F)V

    .line 407
    :goto_2
    const v7, 0x1050131

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 409
    .local v0, "centerImageSize":I
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    int-to-float v9, v0

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

    .line 410
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    int-to-float v9, v0

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setY(F)V

    .line 411
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    int-to-float v8, v0

    div-float/2addr v8, v10

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 412
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    int-to-float v8, v0

    div-float/2addr v8, v10

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 413
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 414
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 416
    const v7, 0x1050132

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 417
    .local v2, "descriptionWidth":I
    const v7, 0x1050133

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 418
    .local v1, "descriptionHeight":I
    const/4 v5, 0x0

    :goto_3
    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    add-int/lit8 v7, v7, 0x1

    if-ge v5, v7, :cond_5

    .line 419
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 421
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 422
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    int-to-float v9, v2

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setX(F)V

    .line 423
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    int-to-float v9, v1

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setY(F)V

    .line 418
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 390
    .end local v0    # "centerImageSize":I
    .end local v1    # "descriptionHeight":I
    .end local v2    # "descriptionWidth":I
    :cond_3
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v14

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v9, 0x1050126

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    const v9, 0x1050120

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

    goto/16 :goto_1

    .line 404
    :cond_4
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    const v9, 0x105012b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_2

    .line 425
    .restart local v0    # "centerImageSize":I
    .restart local v1    # "descriptionHeight":I
    .restart local v2    # "descriptionWidth":I
    :cond_5
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v8, 0x104077f

    const v7, 0x1040779

    const/4 v6, -0x1

    const/4 v5, 0x2

    .line 734
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 735
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 808
    :goto_0
    return v3

    .line 738
    :cond_0
    const/4 v2, 0x0

    .line 740
    .local v2, "descriptionText":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsHoverEventEnabled:Z

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_a

    .line 741
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 743
    .local v1, "currentViewIdx":I
    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    if-eq v1, v3, :cond_2

    .line 744
    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playFocusAnimation(II)V

    .line 746
    iget-boolean v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    if-eqz v3, :cond_2

    .line 747
    const/16 v3, 0x80

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 748
    .local v0, "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 749
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->requestAccessibilityFocus()Z

    .line 751
    packed-switch v1, :pswitch_data_0

    .line 784
    const/4 v2, 0x0

    .line 787
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v3, :cond_2

    .line 790
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 794
    .end local v0    # "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    .line 808
    .end local v1    # "currentViewIdx":I
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 753
    .restart local v0    # "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v1    # "currentViewIdx":I
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v4, 0x1040777

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 754
    goto :goto_1

    .line 756
    :pswitch_1
    sget v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v3, v5, :cond_4

    .line 757
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v4, 0x1040778

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 759
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v4, 0x104077e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 760
    goto :goto_1

    .line 762
    :pswitch_2
    sget v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v3, v5, :cond_5

    .line 763
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 765
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v4, 0x104077d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 766
    goto :goto_1

    .line 768
    :pswitch_3
    sget v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v3, v5, :cond_6

    .line 769
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v4, 0x104077a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 771
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 772
    goto/16 :goto_1

    .line 774
    :pswitch_4
    sget v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-eq v3, v5, :cond_7

    sget-boolean v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v3, :cond_8

    .line 775
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v4, 0x104077c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 777
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 778
    goto/16 :goto_1

    .line 780
    :pswitch_5
    sget v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-eq v3, v5, :cond_9

    sget-boolean v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v3, :cond_1

    .line 781
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 796
    .end local v0    # "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "currentViewIdx":I
    :cond_a
    iget-boolean v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsHoverEventEnabled:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 797
    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    if-eq v3, v6, :cond_3

    .line 798
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIm:Landroid/hardware/input/InputManager;

    if-nez v3, :cond_b

    .line 799
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIm:Landroid/hardware/input/InputManager;

    .line 801
    :cond_b
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIm:Landroid/hardware/input/InputManager;

    if-eqz v3, :cond_c

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIm:Landroid/hardware/input/InputManager;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIm:Landroid/hardware/input/InputManager;

    const/16 v4, -0x100

    const/16 v5, 0x140

    invoke-virtual {v3, v6, v4, v5}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v3

    if-nez v3, :cond_3

    .line 802
    :cond_c
    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    invoke-direct {p0, v3, v6}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playFocusAnimation(II)V

    .line 803
    iput v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    goto/16 :goto_2

    .line 751
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected generateAndPlayFinishAnimation()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 470
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    add-int/lit8 v4, v6, -0x1

    .local v4, "idx":I
    :goto_0
    if-ltz v4, :cond_0

    .line 471
    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v6, v6, v4

    const-string v7, "alpha"

    new-array v8, v9, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 472
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v4

    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_INTERVAL:I

    mul-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 473
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 474
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 470
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 478
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_0
    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    .line 485
    .local v5, "viewIdx":I
    invoke-direct {p0, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playHideDescriptionAnimation(I)V

    .line 487
    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v9, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 488
    .local v2, "centerScaleX":Landroid/animation/ObjectAnimator;
    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleY"

    new-array v8, v9, [F

    fill-array-data v8, :array_2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 490
    .local v3, "centerScaleY":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 491
    .local v1, "animators":Landroid/animation/AnimatorSet;
    new-array v6, v9, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 492
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->CENTER_IMAGE_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 493
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 495
    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFinishAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->startCloseAnimation(ILandroid/animation/Animator$AnimatorListener;)V

    .line 497
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    .line 498
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->removeView(Landroid/view/View;)V

    .line 499
    iput-object v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    .line 502
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_2

    .line 503
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v6}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->removeView(Landroid/view/View;)V

    .line 504
    iput-object v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    .line 507
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playCloseSound()V

    .line 508
    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    if-eqz v6, :cond_3

    sget v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    sget-boolean v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-nez v6, :cond_3

    .line 509
    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    invoke-virtual {v6, v9}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->playVibrator(I)V

    .line 511
    :cond_3
    return-void

    .line 471
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 487
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 488
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected generateAndPlayStartAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 434
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleX"

    new-array v7, v8, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 435
    .local v2, "centerScaleX":Landroid/animation/ObjectAnimator;
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleY"

    new-array v7, v8, [F

    fill-array-data v7, :array_1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 437
    .local v3, "centerScaleY":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 438
    .local v1, "animators":Landroid/animation/AnimatorSet;
    new-array v5, v8, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v3, v5, v9

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 439
    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 440
    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->CENTER_IMAGE_DURATION:I

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 441
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 442
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const/4 v4, 0x0

    .local v4, "idx":I
    :goto_0
    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    if-ge v4, v5, :cond_1

    .line 446
    if-eqz v4, :cond_0

    .line 447
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v4

    const-string v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 448
    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_INTERVAL:I

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 449
    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_DURATION:I

    div-int/lit8 v5, v5, 0x2

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 450
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 445
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 452
    :cond_0
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v4

    const-string v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 453
    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 454
    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_DURATION:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 455
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 459
    :cond_1
    const/4 v5, -0x1

    invoke-direct {p0, v5, v9}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowDescriptionAnimation(IZ)V

    .line 461
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->startOpenAnimation()V

    .line 463
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playOpenSound()V

    .line 464
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    if-eqz v5, :cond_2

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    sget-boolean v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-nez v5, :cond_2

    .line 465
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    invoke-virtual {v5, v9}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->playVibrator(I)V

    .line 466
    :cond_2
    return-void

    .line 434
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 435
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 447
    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 452
    :array_3
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected initAllViewDelta()V
    .locals 0

    .prologue
    .line 825
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 814
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayoutChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 834
    iget-boolean v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsStartUp:Z

    if-eqz v4, :cond_5

    .line 835
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 836
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 837
    .local v1, "helpPopupY":F
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 838
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 839
    .local v3, "r":Landroid/content/res/Resources;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 840
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    .line 846
    .end local v3    # "r":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setY(F)V

    .line 849
    .end local v1    # "helpPopupY":F
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->generateAndPlayStartAnimation()V

    .line 851
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_4

    .line 852
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_2

    .line 853
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSmallSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 851
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 841
    .end local v2    # "idx":I
    .restart local v1    # "helpPopupY":F
    .restart local v3    # "r":Landroid/content/res/Resources;
    :cond_3
    if-eqz v3, :cond_0

    .line 842
    const v4, 0x1050136

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 843
    .local v0, "bottomMargin":I
    int-to-float v4, v0

    sub-float/2addr v1, v4

    goto :goto_0

    .line 855
    .end local v0    # "bottomMargin":I
    .end local v1    # "helpPopupY":F
    .end local v3    # "r":Landroid/content/res/Resources;
    .restart local v2    # "idx":I
    :cond_4
    iput-boolean v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsStartUp:Z

    .line 857
    .end local v2    # "idx":I
    :cond_5
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 830
    return-void
.end method

.method protected onTouchDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 708
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 703
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->onFinishing()V

    goto :goto_0

    .line 707
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 726
    const/4 v0, 0x0

    .line 729
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onTouchUp(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 712
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 721
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsReservedToFinish:Z

    if-eqz v0, :cond_1

    .line 717
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mSelectedViewIdx:I

    .line 720
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 862
    const/4 v0, 0x1

    return v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 868
    return-void
.end method

.method protected showHoverEnterAnimation(I)V
    .locals 0
    .param p1, "viewIdx"    # I

    .prologue
    .line 516
    return-void
.end method

.method protected showHoverExitAnimation(I)V
    .locals 0
    .param p1, "viewIdx"    # I

    .prologue
    .line 521
    return-void
.end method
