.class public Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;
.super Ljava/lang/Object;
.source "AirButtonAdapterWrapper.java"


# instance fields
.field private mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

.field private mAttrs:Lcom/samsung/android/airbutton/Attributes;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsParentThemeDeviceDefault:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;Lcom/samsung/android/airbutton/Attributes;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p3, "attrs"    # Lcom/samsung/android/airbutton/Attributes;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 39
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 40
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    .line 41
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mIsParentThemeDeviceDefault:Z

    .line 49
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 51
    iput-object p3, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 53
    if-eqz p1, :cond_0

    .line 54
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 57
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10105a2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 58
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    .line 59
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mIsParentThemeDeviceDefault:Z

    .line 61
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    return-void
.end method

.method private getDummyView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 243
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, "dummyTextView":Landroid/widget/TextView;
    const-string v2, "You set wrong data for this UI type"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 246
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    return-object v0
.end method

.method private getListView(I)Landroid/view/View;
    .locals 12
    .param p1, "idx"    # I

    .prologue
    .line 84
    const/4 v3, 0x0

    .line 86
    .local v3, "rootView":Landroid/view/View;
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v9, :cond_0

    move-object v4, v3

    .line 171
    .end local v3    # "rootView":Landroid/view/View;
    .local v4, "rootView":Landroid/view/View;
    :goto_0
    return-object v4

    .line 91
    .end local v4    # "rootView":Landroid/view/View;
    .restart local v3    # "rootView":Landroid/view/View;
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v9, v9, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 92
    rem-int/lit8 v9, p1, 0x2

    if-nez v9, :cond_2

    .line 93
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x1090026

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 97
    :goto_1
    const v9, 0x102033f

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 98
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 99
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v9, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0    # "imageView":Landroid/widget/ImageView;
    :goto_2
    move-object v4, v3

    .line 171
    .end local v3    # "rootView":Landroid/view/View;
    .restart local v4    # "rootView":Landroid/view/View;
    goto :goto_0

    .line 95
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "rootView":Landroid/view/View;
    .restart local v3    # "rootView":Landroid/view/View;
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x1090027

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 105
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v9, v9, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 106
    rem-int/lit8 v9, p1, 0x2

    if-nez v9, :cond_5

    .line 107
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x109002f

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 111
    :goto_3
    const v9, 0x1020347

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 112
    .local v6, "textView":Landroid/widget/TextView;
    if-eqz v6, :cond_4

    .line 113
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v9, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_4
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 116
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 109
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x109002e

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    .line 119
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v9, v9, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_f

    .line 120
    rem-int/lit8 v9, p1, 0x2

    if-nez v9, :cond_b

    .line 121
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x109002c

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 125
    :goto_4
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v9, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v1

    .line 127
    .local v1, "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    const v9, 0x1020343

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 128
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_7

    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_7

    .line 129
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->makeCircularImage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_7
    const v9, 0x1020344

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 133
    .restart local v6    # "textView":Landroid/widget/TextView;
    const v9, 0x1020345

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 134
    .local v7, "textViewMain":Landroid/widget/TextView;
    const v9, 0x1020346

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 135
    .local v8, "textViewSub":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getSubDescription()Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "subDescription":Ljava/lang/String;
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    .line 138
    if-eqz v7, :cond_8

    .line 139
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 144
    :cond_8
    if-eqz v8, :cond_9

    .line 145
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getSubDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 150
    :cond_9
    if-eqz v6, :cond_a

    .line 151
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    :cond_a
    :goto_5
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 166
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 123
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "subDescription":Ljava/lang/String;
    .end local v6    # "textView":Landroid/widget/TextView;
    .end local v7    # "textViewMain":Landroid/widget/TextView;
    .end local v8    # "textViewSub":Landroid/widget/TextView;
    :cond_b
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x109002d

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_4

    .line 153
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    .restart local v1    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .restart local v5    # "subDescription":Ljava/lang/String;
    .restart local v6    # "textView":Landroid/widget/TextView;
    .restart local v7    # "textViewMain":Landroid/widget/TextView;
    .restart local v8    # "textViewSub":Landroid/widget/TextView;
    :cond_c
    if-eqz v6, :cond_d

    .line 154
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 159
    :cond_d
    if-eqz v7, :cond_e

    .line 160
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    :cond_e
    if-eqz v8, :cond_a

    .line 162
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 168
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .end local v5    # "subDescription":Ljava/lang/String;
    .end local v6    # "textView":Landroid/widget/TextView;
    .end local v7    # "textViewMain":Landroid/widget/TextView;
    .end local v8    # "textViewSub":Landroid/widget/TextView;
    :cond_f
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "You set wrong data type. You should set correct data set for this UI type"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private getMenuView(I)Landroid/view/View;
    .locals 13
    .param p1, "idx"    # I

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, -0x2

    .line 175
    const/4 v4, 0x0

    .line 177
    .local v4, "rootView":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v7, :cond_0

    move-object v5, v4

    .line 239
    .end local v4    # "rootView":Landroid/view/View;
    .local v5, "rootView":Landroid/view/View;
    :goto_0
    return-object v5

    .line 188
    .end local v5    # "rootView":Landroid/view/View;
    .restart local v4    # "rootView":Landroid/view/View;
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 189
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x109002a

    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 193
    :goto_1
    const v7, 0x1020342

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 194
    .local v1, "imageViewOnly":Landroid/widget/ImageView;
    const v7, 0x1020340

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 195
    .local v0, "imageView":Landroid/widget/ImageView;
    const v7, 0x1020341

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 197
    .local v6, "textView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v7, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v2

    .line 198
    .local v2, "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getSubDescription()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 199
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "You set wrong data type. You can\'t use SubDescription for UI_MENU_TYPE"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 191
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "imageViewOnly":Landroid/widget/ImageView;
    .end local v2    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x109002b

    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 201
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    .restart local v1    # "imageViewOnly":Landroid/widget/ImageView;
    .restart local v2    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .restart local v6    # "textView":Landroid/widget/TextView;
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 202
    if-eqz v0, :cond_3

    .line 203
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    :cond_3
    if-eqz v6, :cond_4

    .line 206
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    :cond_4
    if-eqz v1, :cond_5

    .line 209
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_5
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 214
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    move-object v5, v4

    .line 239
    .end local v4    # "rootView":Landroid/view/View;
    .restart local v5    # "rootView":Landroid/view/View;
    goto :goto_0

    .line 215
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "rootView":Landroid/view/View;
    .restart local v4    # "rootView":Landroid/view/View;
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_a

    .line 216
    if-eqz v1, :cond_7

    .line 217
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    :cond_7
    if-eqz v0, :cond_8

    .line 220
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    :cond_8
    if-eqz v6, :cond_9

    .line 228
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 233
    :cond_9
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 234
    .restart local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 236
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "You set wrong data type. You can\'t use only text data for UI_MENU_TYPE"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private makeCircularImage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 252
    iget-object v11, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10800d9

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 253
    .local v7, "mask":Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    .line 254
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v11, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v5, v11, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 280
    :goto_0
    return-object v5

    .line 258
    :cond_0
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 259
    .local v10, "width":I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 261
    .local v6, "height":I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v6, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 263
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12, v10, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 264
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 266
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 267
    .local v8, "roundPaint":Landroid/graphics/Paint;
    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 268
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v7, v11, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 270
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 271
    .local v9, "strokePaint":Landroid/graphics/Paint;
    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 272
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 273
    const v2, -0x7b7b7d

    .line 274
    .local v2, "color":I
    int-to-float v11, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float v3, v11, v12

    .line 275
    .local v3, "cx":F
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 277
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v3, v11

    invoke-virtual {v1, v3, v3, v11, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 279
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v11, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v4, v11, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v4, "d":Landroid/graphics/drawable/Drawable;
    move-object v5, v4

    .line 280
    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    packed-switch v0, :pswitch_data_0

    .line 79
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 75
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getListView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 77
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getMenuView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
