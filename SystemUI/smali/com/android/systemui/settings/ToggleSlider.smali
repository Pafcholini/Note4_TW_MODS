.class public Lcom/android/systemui/settings/ToggleSlider;
.super Landroid/widget/RelativeLayout;
.source "ToggleSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/ToggleSlider$TouchListener;,
        Lcom/android/systemui/settings/ToggleSlider$Listener;
    }
.end annotation


# static fields
.field private static final AUTO_BRIGHTNESS_DETAIL_STEP:I = 0x19

.field private static mDiagnosticLogs:Z


# instance fields
.field private final EDM_FALSE:I

.field private final EDM_NULL:I

.field private final EDM_TRUE:I

.field private mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

.field private mAutoBrightnessGroup:Landroid/view/ViewGroup;

.field private mAutomaticAvailable:Z

.field private mBrightnessIcon:Landroid/widget/ImageView;

.field private final mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mFromUser:Z

.field public mIsMirror:Z

.field private mIsTogglePressed:Z

.field private mLabel:Landroid/widget/TextView;

.field private mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

.field private mMirror:Lcom/android/systemui/settings/ToggleSlider;

.field private mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSeekTouchListener:Landroid/view/View$OnTouchListener;

.field private mSlider:Landroid/widget/SeekBar;

.field private mSliderLayout:Landroid/widget/LinearLayout;

.field private final mTWSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mToggle:Landroid/widget/CompoundButton;

.field private mTracking:Z

.field private final mTwSeekTouchListener:Landroid/view/View$OnTouchListener;

.field private mTwSlider:Landroid/widget/SeekBar;

.field private mTwSliderLayout:Landroid/widget/LinearLayout;

.field private mTwSliderText:Landroid/widget/TextView;

.field private settedvalue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 780
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/settings/ToggleSlider;->mDiagnosticLogs:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/settings/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    .line 95
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mFromUser:Z

    .line 333
    new-instance v7, Lcom/android/systemui/settings/ToggleSlider$3;

    invoke-direct {v7, p0}, Lcom/android/systemui/settings/ToggleSlider$3;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 403
    new-instance v7, Lcom/android/systemui/settings/ToggleSlider$4;

    invoke-direct {v7, p0}, Lcom/android/systemui/settings/ToggleSlider$4;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 474
    new-instance v7, Lcom/android/systemui/settings/ToggleSlider$5;

    invoke-direct {v7, p0}, Lcom/android/systemui/settings/ToggleSlider$5;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mSeekTouchListener:Landroid/view/View$OnTouchListener;

    .line 491
    new-instance v7, Lcom/android/systemui/settings/ToggleSlider$6;

    invoke-direct {v7, p0}, Lcom/android/systemui/settings/ToggleSlider$6;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mTWSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 558
    new-instance v7, Lcom/android/systemui/settings/ToggleSlider$7;

    invoke-direct {v7, p0}, Lcom/android/systemui/settings/ToggleSlider$7;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSeekTouchListener:Landroid/view/View$OnTouchListener;

    .line 730
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/systemui/settings/ToggleSlider;->EDM_NULL:I

    .line 731
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/systemui/settings/ToggleSlider;->EDM_FALSE:I

    .line 732
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/systemui/settings/ToggleSlider;->EDM_TRUE:I

    .line 112
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/settings/ToggleSlider;->mDiagnosticLogs:Z

    .line 116
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    .line 118
    const v7, 0x7f0400bb

    invoke-static {p1, v7, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 121
    .local v2, "res":Landroid/content/res/Resources;
    sget-object v7, Lcom/android/systemui/R$styleable;->ToggleSlider:[I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    .local v0, "a":Landroid/content/res/TypedArray;
    const v7, 0x7f0e0396

    invoke-virtual {p0, v7}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CompoundButton;

    iput-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    .line 125
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    iget-object v8, p0, Lcom/android/systemui/settings/ToggleSlider;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    const v7, 0x7f0e0392

    invoke-virtual {p0, v7}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    .line 128
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/android/systemui/settings/ToggleSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 129
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/android/systemui/settings/ToggleSlider;->mSeekTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    const v7, 0x7f0e0397

    invoke-virtual {p0, v7}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    .line 132
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    const v7, 0x7f0e038e

    invoke-virtual {p0, v7}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    iput-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    .line 137
    const v7, 0x7f0e038d

    invoke-virtual {p0, v7}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    .line 139
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-eqz v7, :cond_0

    .line 140
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setVisibility(I)V

    .line 141
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    :cond_0
    const v7, 0x7f0e0391

    invoke-virtual {p0, v7}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    .line 146
    const v7, 0x7f0e0393

    invoke-virtual {p0, v7}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    .line 147
    const v7, 0x7f0e0395

    invoke-virtual {p0, v7}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    .line 148
    const v7, 0x7f0e0394

    invoke-virtual {p0, v7}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    .line 149
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v7, :cond_1

    .line 150
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMode(I)V

    .line 151
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02032f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020330

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setSplitProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020331

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/android/systemui/settings/ToggleSlider;->mTWSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 155
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSeekTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    .line 159
    const-string v7, "sensor"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    .line 160
    .local v4, "sensorMgr":Landroid/hardware/SensorManager;
    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 161
    .local v3, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 162
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    .line 164
    .local v5, "sensorType":I
    const/4 v7, 0x5

    if-ne v5, v7, :cond_2

    .line 165
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    .line 161
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v5    # "sensorType":I
    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-eqz v7, :cond_4

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness_mode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    .line 172
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    mul-int/lit8 v8, v8, 0x19

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    .line 187
    :goto_1
    new-instance v6, Lcom/android/systemui/settings/ToggleSlider$TouchListener;

    invoke-direct {v6, p0}, Lcom/android/systemui/settings/ToggleSlider$TouchListener;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    .line 188
    .local v6, "touchListener":Lcom/android/systemui/settings/ToggleSlider$TouchListener;
    const v7, 0x7f0e0390

    invoke-virtual {p0, v7}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutoBrightnessGroup:Landroid/view/ViewGroup;

    .line 189
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutoBrightnessGroup:Landroid/view/ViewGroup;

    if-eqz v7, :cond_7

    .line 190
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutoBrightnessGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 195
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    new-instance v8, Lcom/android/systemui/settings/ToggleSlider$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/settings/ToggleSlider$1;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 226
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    new-instance v8, Lcom/android/systemui/settings/ToggleSlider$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/settings/ToggleSlider$2;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 264
    return-void

    .line 176
    .end local v6    # "touchListener":Lcom/android/systemui/settings/ToggleSlider$TouchListener;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    iget-boolean v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness_mode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_3
    iget-object v8, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    .line 183
    iget-object v8, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "screen_brightness_mode"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_6

    const/4 v7, 0x1

    :goto_4
    invoke-virtual {v8, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 178
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 183
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 192
    .restart local v6    # "touchListener":Lcom/android/systemui/settings/ToggleSlider$TouchListener;
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/ToggleSlider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/ToggleSlider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/settings/ToggleSlider;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTWSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/settings/ToggleSlider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/systemui/settings/ToggleSlider;->settedvalue:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/ToggleSlider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/settings/ToggleSlider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/systemui/settings/ToggleSlider;->mDiagnosticLogs:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSlider;->sendLogs()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/ToggleSlider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/settings/ToggleSlider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z

    return p1
.end method

.method private getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "edmUri"    # Ljava/lang/String;
    .param p3, "projectionArgs"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 735
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 736
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 737
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 739
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 740
    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    const/4 v0, 0x1

    .line 747
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 750
    :goto_0
    return v0

    .line 743
    :cond_0
    const/4 v0, 0x0

    .line 747
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 745
    :catch_0
    move-exception v0

    .line 747
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 750
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 747
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "edmUri"    # Ljava/lang/String;
    .param p3, "projectionArgs"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 753
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 754
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 755
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 757
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 758
    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    const/4 v0, 0x1

    .line 765
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 768
    :goto_0
    return v0

    .line 761
    :cond_0
    const/4 v0, 0x0

    .line 765
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 763
    :catch_0
    move-exception v0

    .line 765
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 768
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 765
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isRTL()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 721
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 722
    .local v0, "value":B
    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 726
    :cond_1
    return v1
.end method

.method private sendLogs()V
    .locals 4

    .prologue
    .line 782
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 783
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.systemui.statusbar.policy.toggleslider"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v2, "feature"

    const-string v3, "QP05"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 787
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 789
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 791
    return-void
.end method


# virtual methods
.method public hideToggle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 703
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutoBrightnessGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 705
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 707
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 708
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutoBrightnessGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 713
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 715
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 716
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 718
    :cond_0
    return-void
.end method

.method public initSplitValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 591
    return-void
.end method

.method public initValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 331
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    invoke-interface {v0, p0}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onInit(Lcom/android/systemui/settings/ToggleSlider;)V

    .line 302
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v6, 0x7f0d01e1

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 633
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02a9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "checkBoxText":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 638
    const-string v3, ""

    .line 639
    .local v3, "progressValue":Ljava/lang/String;
    new-instance v1, Ljava/util/Locale;

    const-string v4, "en_US"

    invoke-direct {v1, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 640
    .local v1, "enLocale":Ljava/util/Locale;
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 641
    .local v2, "progressVal":Ljava/lang/String;
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v4, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 642
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSlider;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 643
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 310
    return-void
.end method

.method public setFromUser(Z)V
    .locals 0
    .param p1, "fromUser"    # Z

    .prologue
    .line 776
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mFromUser:Z

    .line 777
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 321
    :cond_0
    return-void
.end method

.method public setMirror(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 2
    .param p1, "toggleSlider"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    .line 273
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    .line 276
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    .line 280
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setSplitMax(I)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setSplitValue(I)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setSplitText(I)V

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-nez v0, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->hideToggle()V

    .line 290
    :cond_1
    return-void
.end method

.method public setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 0
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 294
    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/systemui/settings/ToggleSlider$Listener;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    .line 306
    return-void
.end method

.method public setSliderProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 773
    return-void
.end method

.method public setSplitMax(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 577
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setSplitMax(I)V

    .line 580
    :cond_0
    return-void
.end method

.method public setSplitText(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    const/4 v7, 0x1

    .line 602
    const-string v0, ""

    .line 604
    .local v0, "progressValue":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSlider;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 612
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v1, :cond_0

    .line 613
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v1, p1}, Lcom/android/systemui/settings/ToggleSlider;->setSplitText(I)V

    .line 615
    :cond_0
    return-void

    .line 607
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setSplitValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mFromUser:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/settings/ToggleSlider;->settedvalue:I

    if-eq v0, p1, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 587
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mFromUser:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/settings/ToggleSlider;->settedvalue:I

    if-eq v0, p1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 328
    :cond_0
    return-void
.end method

.method public updateIcon(ZI)V
    .locals 3
    .param p1, "automatic"    # Z
    .param p2, "value"    # I

    .prologue
    const v0, 0x7f02011f

    const v1, 0x7f02011d

    .line 618
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-nez v2, :cond_1

    .line 619
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 629
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 619
    goto :goto_0

    .line 624
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setValue(I)V

    .line 626
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    if-eqz p1, :cond_2

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setIcon(IZ)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
