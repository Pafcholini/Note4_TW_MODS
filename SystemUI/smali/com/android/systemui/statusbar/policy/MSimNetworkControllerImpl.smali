.class public Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
.super Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.source "MSimNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    }
.end annotation


# static fields
.field static final CHATTY:Z = true

.field static final DEBUG:Z = true

.field private static final NB_SIM:I = 0x2

.field static final REQ_NO_SIM_NOTIFICATION:I = 0x111

.field private static final SIM_0:I = 0x0

.field private static final SIM_1:I = 0x1

.field public static final SimIconImage:[I

.field public static final SimIconImageV2:[I

.field static final TAG:Ljava/lang/String; = "StatusBar.MSimNetworkController"


# instance fields
.field PHONE_ID1:I

.field PHONE_ID2:I

.field mCallState:[I

.field private mCarrierTextSub:[Ljava/lang/String;

.field mCurrentSimSlot:I

.field mDataStateDual:[I

.field private mDefaultPhoneId:I

.field mIsCmccCard:[Z

.field mIsDSDSlimited:[Z

.field mIsDialingEmergencyCall:[Z

.field mLastBluetoothTethered:Z

.field mLastDataState:I

.field mLastDataStateDual:[I

.field mLastMobileActivityIconId:[I

.field private mLastNwboosterDataTypeIconId:I

.field private mLastNwboosterRilEnabled:Z

.field private mLastNwboosterSettingEnabled:Z

.field mLastRoamingIconId:[I

.field mLastSeperatedDataState:[I

.field mLastSimDataServiceState:[I

.field mLastSimFocus:[Z

.field mLastSimIconId:I

.field mLastSimIconVisible:Z

.field mLastWifiActivityIconId:I

.field mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

.field mMSimContentDescriptionDataType:[Ljava/lang/String;

.field mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

.field mMSimDataActivity:[I

.field mMSimDataConnected:[Z

.field mMSimDataDirectionIconId:[I

.field mMSimDataServiceState:[I

.field mMSimDataSignalIconId:[I

.field mMSimDataTypeIconId:[I

.field private mMSimIconId:[I

.field mMSimLastCombinedSignalIconId:[I

.field mMSimLastDataDirectionIconId:[I

.field mMSimLastDataTypeIconId:[I

.field mMSimLastPhoneSignalIconId:[I

.field mMSimLastSimIconId:[I

.field mMSimLastcombinedActivityIconId:[I

.field mMSimMobileActivityIconId:[I

.field mMSimNetworkName:[Ljava/lang/String;

.field mMSimPhoneSignalIconId:[I

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field mMSimServiceState:[Landroid/telephony/ServiceState;

.field mMSimSignalStrength:[Landroid/telephony/SignalStrength;

.field mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field mMSimcombinedActivityIconId:[I

.field mMSimcombinedSignalIconId:[I

.field mMobileActivityIconId:[I

.field private mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;

.field private mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;

.field mNoMSimIconId:[I

.field private mNwboosterDataTypeIconId:I

.field private mNwboosterRilEnabled:Z

.field private mNwboosterSettingEnabled:Z

.field mPhoneCount:I

.field mPlmn:[Ljava/lang/String;

.field mRoamingIconId:[I

.field mRssiIconId:[I

.field mSeperatedDataNetType:[I

.field mSeperatedDataState:[I

.field mShowPlmn:[Z

.field mShowSpn:[Z

.field private mSim1Icon:I

.field private mSim2Icon:I

.field private mSimEnabled:[Z

.field mSimFocus:[Z

.field mSimIconId:I

.field mSimIconVisible:Z

.field mSimSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSpn:[Ljava/lang/String;

.field private mSubIdPhoneIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSubsLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiActivityIconId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImage:[I

    .line 186
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    return-void

    .line 179
    :array_0
    .array-data 4
        0x7f02033d
        0x7f02033e
        0x7f020341
        0x7f020344
        0x7f020340
    .end array-data

    .line 186
    :array_1
    .array-data 4
        0x7f02033d
        0x7f02033e
        0x7f02033c
        0x7f020345
        0x7f020343
        0x7f020342
        0x7f020341
        0x7f020344
        0x7f020340
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 233
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;)V

    .line 149
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    .line 150
    iput v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->PHONE_ID1:I

    .line 151
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->PHONE_ID2:I

    .line 153
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSignalClusters:Ljava/util/ArrayList;

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    .line 157
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 158
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    .line 159
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconVisible:Z

    .line 160
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    .line 163
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 2813
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastBluetoothTethered:Z

    .line 2815
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiActivityIconId:I

    .line 2821
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataState:I

    .line 2919
    const v3, 0x7f0203d7

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2920
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    .line 2921
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 2922
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    .line 2923
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    .line 2924
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    .line 234
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 235
    .local v2, "numPhones":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener numPhones: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-array v3, v2, [Landroid/telephony/SignalStrength;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    .line 237
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    .line 238
    new-array v3, v2, [Landroid/telephony/ServiceState;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    .line 239
    new-array v3, v2, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 240
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimIconId:[I

    .line 241
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    .line 242
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    .line 243
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    .line 244
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    .line 245
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    .line 246
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    .line 247
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    .line 248
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    .line 249
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    .line 250
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    .line 251
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    .line 252
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    .line 253
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    .line 254
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    .line 255
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    .line 256
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastcombinedActivityIconId:[I

    .line 257
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    .line 258
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    .line 259
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    .line 260
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    .line 261
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    .line 262
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    .line 263
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    .line 264
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    .line 265
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    .line 266
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    .line 267
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimFocus:[Z

    .line 270
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    .line 271
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    .line 272
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMobileActivityIconId:[I

    .line 273
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimDataServiceState:[I

    .line 274
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRoamingIconId:[I

    .line 276
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    .line 277
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    .line 278
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    .line 283
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    .line 284
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    .line 285
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    .line 288
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    .line 289
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    .line 290
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    .line 291
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    .line 294
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    .line 297
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 298
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v4, v3, v1

    .line 299
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v4, v3, v1

    .line 300
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    .line 302
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v7, v3, v1

    .line 303
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v7, v3, v1

    .line 304
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aput v6, v3, v1

    .line 305
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aput v6, v3, v1

    .line 306
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aput-boolean v7, v3, v1

    .line 307
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aput v6, v3, v1

    .line 308
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aput v6, v3, v1

    .line 309
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    aput v7, v3, v1

    .line 310
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    aput v7, v3, v1

    .line 311
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastcombinedActivityIconId:[I

    aput v7, v3, v1

    .line 312
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aput v7, v3, v1

    .line 313
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    aput v7, v3, v1

    .line 314
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v4, v3, v1

    .line 315
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aput v8, v3, v1

    .line 316
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aput v7, v3, v1

    .line 317
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    aput v7, v3, v1

    .line 319
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aput v7, v3, v1

    .line 320
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aput v7, v3, v1

    .line 321
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    aput v7, v3, v1

    .line 323
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aput v7, v3, v1

    .line 324
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aput-boolean v7, v3, v1

    .line 325
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aput-boolean v7, v3, v1

    .line 327
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    aput-boolean v7, v3, v1

    .line 329
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aput-boolean v7, v3, v1

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 335
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 336
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 339
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-boolean v3, v3, v4

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataConnected:Z

    .line 340
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 341
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    .line 342
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataServiceState:I

    .line 343
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    .line 344
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 345
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 347
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 348
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneSignalIconId:I

    .line 349
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastPhoneSignalIconId:I

    .line 351
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataDirectionIconId:I

    .line 352
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataSignalIconId:I

    .line 353
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeIconId:I

    .line 354
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoSimIconId:I

    .line 356
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 357
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 359
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 361
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataDirectionIconId:I

    .line 362
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedSignalIconId:I

    .line 363
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataTypeIconId:I

    .line 364
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    .line 367
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 368
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.settings.SIMCARD_MGT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    const-string v3, "android.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v3, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 375
    new-instance v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 380
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->initDualSimUiValue()V

    .line 381
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 383
    new-instance v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 386
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;J)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # J

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->radioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshSignalIconForCTCRoamingCall()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    return p1
.end method

.method private applyCHN(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 7
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const v6, 0x7f02047c

    const v5, 0x7f02046a

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3007
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_8

    .line 3008
    :cond_0
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "refreshSignalCluster - isDialingEmergencyCall"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3015
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v5, v0, v3

    .line 3016
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v5, v0, v3

    .line 3017
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, v3

    aput v2, v0, v3

    .line 3032
    :cond_1
    :goto_0
    const-string v0, "CTC"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3033
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCTC(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 3035
    :cond_2
    const-string v0, "CU"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3036
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCU(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 3038
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 3039
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v0, :cond_d

    .line 3040
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v4, :cond_b

    .line 3042
    invoke-interface {p1, v4, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 3043
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "refreshSignalCluster - mDataIconForCHN [SIM_0]: TelephonyManager.DATA_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v3

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v4, :cond_c

    .line 3049
    invoke-interface {p1, v4, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 3050
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "refreshSignalCluster - mDataIconForCHN [SIM_1]: TelephonyManager.DATA_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    :goto_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-eqz v0, :cond_6

    .line 3059
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aput-boolean v3, v0, p2

    .line 3078
    :cond_6
    return-void

    .line 3010
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v6, v0, v3

    .line 3011
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v6, v0, v3

    .line 3012
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020961

    aput v1, v0, v3

    .line 3013
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 3019
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1

    .line 3020
    :cond_9
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "refreshSignalCluster - isDialingEmergencyCall"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3022
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v6, v0, v2

    .line 3023
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v6, v0, v2

    .line 3024
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020961

    aput v1, v0, v2

    .line 3025
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v0, v2

    goto/16 :goto_0

    .line 3027
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v5, v0, v2

    .line 3028
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v5, v0, v2

    .line 3029
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, v2

    aput v2, v0, v2

    goto/16 :goto_0

    .line 3045
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v2

    invoke-interface {p1, v0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    goto/16 :goto_1

    .line 3052
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v3

    invoke-interface {p1, v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    goto :goto_2

    .line 3055
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, p2

    invoke-interface {p1, v0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    goto :goto_2
.end method

.method private applyCTC(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 7
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const v6, 0x7f020698

    const v5, 0x7f0203f6

    const v4, 0x7f02047c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3096
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsDsdsOnlyRoaming:Z

    if-eqz v0, :cond_3

    .line 3097
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3098
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, v2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, v2

    if-ne v0, v3, :cond_19

    .line 3100
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v0, v3

    .line 3101
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v0, v3

    .line 3102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020961

    aput v1, v0, v3

    .line 3103
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v0, v3

    .line 3114
    :cond_3
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMLockedOfSlot(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, v2

    aput v2, v0, v2

    .line 3116
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v6, v0, v2

    .line 3117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v6, v0, v2

    .line 3126
    :cond_4
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMLockedOfSlot(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, v3

    aput v2, v0, v3

    .line 3128
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v6, v0, v3

    .line 3129
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v6, v0, v3

    .line 3138
    :cond_5
    :goto_2
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isFlightModePossible()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3139
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v5, v0, v2

    .line 3140
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v5, v0, v2

    .line 3142
    :cond_7
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isFlightModePossible()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3143
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v5, v0, v3

    .line 3144
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v5, v0, v3

    .line 3147
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, v2

    if-eq v0, v5, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, v2

    if-ne v0, v6, :cond_b

    .line 3149
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, v2

    aput v2, v0, v2

    .line 3151
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, v3

    if-eq v0, v5, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, v3

    if-ne v0, v6, :cond_d

    .line 3153
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, v3

    aput v2, v0, v3

    .line 3156
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, v2

    const v1, 0x7f020393

    if-ne v0, v1, :cond_e

    .line 3157
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020394

    aput v1, v0, v2

    .line 3159
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, v3

    const v1, 0x7f020393

    if-ne v0, v1, :cond_f

    .line 3160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020394

    aput v1, v0, v3

    .line 3163
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v0, v0, v2

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, v2

    const v1, 0x7f020961

    if-ne v0, v1, :cond_10

    .line 3164
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v2, v0, v2

    .line 3166
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v0, v0, v3

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, v3

    const v1, 0x7f020961

    if-ne v0, v1, :cond_11

    .line 3167
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v2, v0, v3

    .line 3170
    :cond_11
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsDsdsOnlyRoaming:Z

    if-eqz v0, :cond_16

    .line 3171
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_16

    .line 3173
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, v2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, v2

    if-ne v0, v3, :cond_1f

    .line 3175
    :cond_15
    invoke-interface {p1, v2, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 3183
    :cond_16
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3184
    invoke-interface {p1, v2, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 3185
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "refreshSignalCluster - sim1 Off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    :cond_17
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3188
    invoke-interface {p1, v2, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 3189
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "refreshSignalCluster - sim2 Off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v0, v0, p2

    invoke-interface {p1, v0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setRssiIcon(II)V

    .line 3193
    return-void

    .line 3104
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, v3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, v3

    if-ne v0, v3, :cond_3

    .line 3106
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v0, v2

    .line 3107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v0, v2

    .line 3108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020961

    aput v1, v0, v2

    .line 3109
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v0, v2

    goto/16 :goto_0

    .line 3118
    :cond_1b
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3120
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020961

    aput v1, v0, v2

    .line 3121
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v0, v2

    .line 3122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v0, v2

    .line 3123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v0, v2

    goto/16 :goto_1

    .line 3130
    :cond_1d
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v3

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3132
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020961

    aput v1, v0, v3

    .line 3133
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v0, v3

    .line 3134
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v0, v3

    .line 3135
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v0, v3

    goto/16 :goto_2

    .line 3176
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, v3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, v3

    if-ne v0, v3, :cond_16

    .line 3178
    :cond_20
    invoke-interface {p1, v2, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    goto/16 :goto_3
.end method

.method private applyCU(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 5
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f0203f7

    .line 3080
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "applyCU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isFlightModePossible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3083
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v2, v0, v3

    .line 3084
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v2, v0, v3

    .line 3086
    :cond_1
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isFlightModePossible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3087
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v2, v0, v4

    .line 3088
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v2, v0, v4

    .line 3090
    :cond_3
    return-void
.end method

.method private applyCommon(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 6
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3232
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    aget v1, v1, p2

    invoke-interface {p1, v1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileActivityIcon(II)V

    .line 3233
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setWifiActivityIcon(I)V

    .line 3234
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v1, v1, p2

    invoke-interface {p1, v1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setRoamingIcon(II)V

    .line 3235
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 3237
    .local v0, "mCurrentDataActiveSim":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3238
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v1, v1, p2

    invoke-interface {p1, v1, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataState(II)V

    .line 3244
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setBtTetherState(Z)V

    .line 3246
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    aput-boolean v1, v4, p2

    .line 3247
    if-nez p2, :cond_0

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3248
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aput-boolean v2, v1, p2

    .line 3250
    :cond_0
    return-void

    .line 3240
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v1, v1, p2

    invoke-interface {p1, v1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataState(II)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 3246
    goto :goto_1
.end method

.method private applyOpen(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 2
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    .line 3227
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "applyOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 3229
    return-void
.end method

.method private final getCHNEriIcon(II)I
    .locals 3
    .param p1, "iconIndex"    # I
    .param p2, "iconMode"    # I

    .prologue
    const v1, 0x7f020393

    const/4 v0, 0x0

    .line 3325
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 3334
    :goto_0
    return v0

    .line 3328
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 3330
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 3332
    goto :goto_0

    .line 3328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final getCTCEriIcon(II)I
    .locals 2
    .param p1, "iconIndex"    # I
    .param p2, "iconMode"    # I

    .prologue
    const/4 v0, 0x0

    .line 3311
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3320
    :goto_0
    return v0

    .line 3314
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3316
    :pswitch_1
    const v0, 0x7f020394

    goto :goto_0

    .line 3318
    :pswitch_2
    const v0, 0x7f020962

    goto :goto_0

    .line 3314
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final getCdmaEriIcon(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 3254
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v3

    if-gtz v3, :cond_1

    const-string v3, "ja3gduosctc"

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3287
    :cond_0
    :goto_0
    return v2

    .line 3258
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    .line 3259
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 3260
    .local v0, "iconIndex":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 3262
    .local v1, "iconMode":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCdmaEriIcon: iconIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iconMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkControllerImpl$Operator:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3273
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 3276
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v3, :cond_0

    .line 3277
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 3279
    :pswitch_0
    const v2, 0x7f02037c

    goto :goto_0

    .line 3267
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCTCEriIcon(II)I

    move-result v2

    goto :goto_0

    .line 3270
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCHNEriIcon(II)I

    move-result v2

    goto :goto_0

    .line 3281
    :pswitch_3
    const v2, 0x7f02044c

    goto :goto_0

    .line 3265
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 3277
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final getCdmaPhoneSignalIconId(I)I
    .locals 9
    .param p1, "phoneId"    # I

    .prologue
    .line 2000
    const/4 v0, 0x0

    .line 2001
    .local v0, "evdoIconLevel":I
    const/4 v3, 0x0

    .line 2003
    .local v3, "lteIconLevel":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    .local v1, "iconLevel":I
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    .line 2004
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v5, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneSignalIconList(II)[I

    move-result-object v2

    .line 2006
    .local v2, "iconList":[I
    const-string v6, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCdmaPhoneSignalIconId( "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ) CTC "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LTE: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2011
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2012
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCdmaEriIcon(I)I

    move-result v6

    aput v6, v5, p1

    .line 2014
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2016
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v5

    mul-int/lit8 v0, v5, 0x5

    .line 2018
    if-nez v1, :cond_5

    .line 2019
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 2078
    :cond_1
    :goto_1
    array-length v5, v2

    add-int/lit8 v4, v5, -0x1

    .line 2079
    .local v4, "maxLevel":I
    if-le v1, v4, :cond_15

    .line 2080
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCdmaPhoneSignalIconId: maxLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too high"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    move v1, v4

    .line 2093
    :cond_2
    :goto_2
    aget v5, v2, v1

    return v5

    .line 2006
    .end local v4    # "maxLevel":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Evdo: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cdma "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 2022
    :cond_5
    add-int/2addr v1, v0

    .line 2024
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaCall(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2027
    :cond_8
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2028
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .line 2032
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2030
    :cond_9
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v5, v6

    goto :goto_3

    .line 2034
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2035
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2036
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .line 2040
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2038
    :cond_b
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v5, v6

    goto :goto_4

    .line 2042
    :cond_c
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC_2:[I

    goto/16 :goto_1

    .line 2045
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2046
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v5

    mul-int/lit8 v3, v5, 0x5

    .line 2048
    if-nez v1, :cond_e

    .line 2049
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2052
    :cond_e
    add-int/2addr v1, v3

    .line 2054
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-nez v5, :cond_10

    :cond_f
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2056
    :cond_10
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2057
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .line 2061
    :goto_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2059
    :cond_11
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v5, v6

    goto :goto_5

    .line 2063
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2064
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2065
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .line 2069
    :goto_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2067
    :cond_13
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v5, v6

    goto :goto_6

    .line 2071
    :cond_14
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC_2:[I

    goto/16 :goto_1

    .line 2086
    .restart local v4    # "maxLevel":I
    :cond_15
    if-gez v1, :cond_2

    .line 2087
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCdmaPhoneSignalIconId: iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too small"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method private getCurrentSimSlot()I
    .locals 1

    .prologue
    .line 3514
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    return v0
.end method

.method private getMobileLabelForCHN()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3196
    const-string v0, ""

    .line 3198
    .local v0, "mobileLabel":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v1, :cond_4

    .line 3199
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, v3

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, v4

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_1

    .line 3201
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v1, v3

    .line 3216
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3223
    :cond_0
    :goto_1
    return-object v0

    .line 3202
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, v3

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_2

    .line 3203
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v1, v4

    goto :goto_0

    .line 3204
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, v4

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_3

    .line 3205
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v1, v3

    goto :goto_0

    .line 3207
    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 3209
    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3210
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0433

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3213
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    goto :goto_0

    .line 3218
    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3219
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getNumberOfSim()I

    move-result v1

    if-nez v1, :cond_0

    .line 3220
    const-string v0, ""

    goto :goto_1
.end method

.method private getPhoneId(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 448
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 451
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    const/4 v0, 0x0

    .line 454
    .end local v0    # "phoneId":I
    :cond_0
    return v0
.end method

.method private getPhoneStateListener(JI)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # J
    .param p3, "slotId"    # I

    .prologue
    .line 864
    new-instance v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;J)V

    .line 993
    .local v0, "mMSimPhoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private final getRoamingIcon(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 3340
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 3342
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v1, v0, p1

    .line 3343
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoService, mRoamingIconId = 0phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    :goto_0
    return-void

    .line 3344
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3346
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3347
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCdmaEriIcon(I)I

    move-result v1

    aput v1, v0, p1

    .line 3348
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma(), isCdmaEri(), mRoamingIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3350
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v1, v0, p1

    .line 3351
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma(), !isCdmaEri(), mRoamingIconId = 0 phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3354
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingIconDisplay:Z

    if-eqz v0, :cond_5

    .line 3363
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020393

    aput v1, v0, p1

    .line 3364
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetworkRoaming(), mRoamingIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3367
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v1, v0, p1

    .line 3368
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nothing final, mRoamingIconId = 0 phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getRssiTypeIconCMCC(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1215
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSglteMode(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1216
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1217
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f020372

    aput v1, v0, p1

    .line 1242
    :cond_0
    :goto_0
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCMCC:isWCDMA = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLTE() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCMCC:mDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCMCC:mRssiIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 1246
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v0, v0, p1

    if-eqz v0, :cond_1

    .line 1247
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v3, v0, p1

    .line 1248
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCMCC:mRssiIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_1
    return-void

    .line 1220
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f020369

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1223
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 1224
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1225
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1226
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f020379

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1228
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f02036c

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1231
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1232
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f020371

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1234
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f020368

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1240
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v3, v0, p1

    goto/16 :goto_0
.end method

.method private getRssiTypeIconCTC(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const v7, 0x7f020366

    const v6, 0x7f020374

    const v5, 0x7f02036a

    const/4 v4, 0x0

    .line 1148
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCTC( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "LTE "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdmalevel "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasDataService(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1153
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    if-gez v0, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1154
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v0, p1

    .line 1202
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_5

    .line 1203
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1204
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020961

    aput v1, v0, p1

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v4, v0, p1

    .line 1212
    :cond_5
    :goto_3
    return-void

    .line 1148
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "WCDMA"

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Evdo"

    goto/16 :goto_0

    :cond_8
    const-string v0, "2g(1x) "

    goto/16 :goto_0

    :cond_9
    const-string v0, ""

    goto/16 :goto_1

    .line 1155
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1156
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v6, v0, p1

    goto :goto_2

    .line 1159
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v7, v0, p1

    goto :goto_2

    .line 1162
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1163
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaCall(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1164
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    if-lez v0, :cond_d

    .line 1168
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f02095f

    aput v1, v0, p1

    goto :goto_2

    .line 1171
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v0, p1

    goto :goto_2

    .line 1173
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    if-lez v0, :cond_f

    .line 1178
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f020960

    aput v1, v0, p1

    goto/16 :goto_2

    .line 1181
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v6, v0, p1

    goto/16 :goto_2

    .line 1188
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f02095e

    aput v1, v0, p1

    goto/16 :goto_2

    .line 1192
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1193
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v0, p1

    goto/16 :goto_2

    .line 1194
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1195
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v6, v0, p1

    goto/16 :goto_2

    .line 1197
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v7, v0, p1

    goto/16 :goto_2

    .line 1206
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasDataService(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1207
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v4, v0, p1

    .line 1208
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v4, v0, p1

    .line 1209
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "getRssiTypeIconCTC : mRoamingIconId =0 mRssiIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private final getSGLTEPhoneSignalIconId(III)I
    .locals 8
    .param p1, "csLevel"    # I
    .param p2, "psLevel"    # I
    .param p3, "phoneId"    # I

    .prologue
    .line 2100
    const/4 v4, 0x0

    .line 2101
    .local v4, "wcdmaIconLevel":I
    const/4 v2, 0x0

    .line 2103
    .local v2, "lteIconLevel":I
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v5, p3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneSignalIconList(II)[I

    move-result-object v1

    .line 2105
    .local v1, "iconList":[I
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSglteMode(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2106
    mul-int/lit8 v5, p2, 0x5

    add-int v0, v5, p1

    .line 2107
    .local v0, "iconLevel":I
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC_2:[I

    .line 2113
    :goto_0
    array-length v5, v1

    add-int/lit8 v3, v5, -0x1

    .line 2114
    .local v3, "maxLevel":I
    if-le v0, v3, :cond_2

    .line 2115
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSGLTEPhoneSignalIconId: maxLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too high"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    move v0, v3

    .line 2128
    :cond_0
    :goto_1
    aget v5, v1, v0

    return v5

    .line 2109
    .end local v0    # "iconLevel":I
    .end local v3    # "maxLevel":I
    :cond_1
    move v0, p1

    .line 2110
    .restart local v0    # "iconLevel":I
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    goto :goto_0

    .line 2121
    .restart local v3    # "maxLevel":I
    :cond_2
    if-gez v0, :cond_0

    .line 2122
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSGLTEPhoneSignalIconId: iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too small"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getSimActive(I)I
    .locals 4
    .param p1, "simSlot"    # I

    .prologue
    const/4 v3, 0x1

    .line 3504
    if-nez p1, :cond_0

    .line 3505
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone1_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3510
    .local v0, "value":I
    :goto_0
    return v0

    .line 3507
    .end local v0    # "value":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method private getSimIconIndex(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 3564
    if-nez p1, :cond_0

    .line 3565
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSim1Icon:I

    .line 3567
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSim2Icon:I

    goto :goto_0
.end method

.method private static getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "slot"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 3735
    const/4 v2, 0x0

    .line 3736
    .local v2, "propVal":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v3

    .line 3737
    .local v3, "subId":[J
    if-eqz v3, :cond_1

    .line 3738
    const/4 v5, 0x0

    aget-wide v6, v3, v5

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 3739
    .local v0, "phoneId":I
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3740
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 3741
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3742
    .local v4, "values":[Ljava/lang/String;
    if-ltz v0, :cond_0

    array-length v5, v4

    if-ge v0, v5, :cond_0

    aget-object v5, v4, v0

    if-eqz v5, :cond_0

    .line 3743
    aget-object v2, v4, v0

    .line 3746
    .end local v4    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_2

    .line 3749
    .end local v0    # "phoneId":I
    .end local v1    # "prop":Ljava/lang/String;
    .end local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .restart local v0    # "phoneId":I
    .restart local v1    # "prop":Ljava/lang/String;
    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_2
    move-object p2, v2

    .line 3746
    goto :goto_0
.end method

.method private getUpdateDataNetType(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 558
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateDataNetType(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 561
    const-string v0, "ORANGE"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 564
    :cond_1
    const-string v0, "OYB"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    const-string v0, "OYA"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    const-string v0, "OYC"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    const-string v0, "OLB"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    const-string v0, "VD2"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    const-string v0, "MNX"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DOR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    const-string v0, "TMH"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    const-string v0, "PCT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    const-string v0, "JDI"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CDR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    const-string v0, "ANC"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DGT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "COL"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTU"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BVO"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TTT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    const-string v0, "TFG"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    const-string v0, "SFR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    const-string v0, "LTE"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkControllerImpl$Operator:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 643
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    goto/16 :goto_0

    .line 618
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    goto/16 :goto_0

    .line 633
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCTCDataNetType(I)V

    goto/16 :goto_0

    .line 637
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCMCCDataNetType(I)V

    goto/16 :goto_0

    .line 640
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCUDataNetType(I)V

    goto/16 :goto_0

    .line 616
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private final getVZWEriIcon(II)I
    .locals 2
    .param p1, "iconIndex"    # I
    .param p2, "iconMode"    # I

    .prologue
    const v0, 0x7f02037c

    const/4 v1, 0x1

    .line 3291
    if-ne p1, v1, :cond_1

    .line 3292
    const/4 v0, 0x0

    .line 3306
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 3294
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 3298
    :pswitch_2
    const v0, 0x7f02044c

    goto :goto_0

    .line 3300
    :pswitch_3
    if-nez p2, :cond_2

    .line 3301
    const v0, 0x7f02037e

    goto :goto_0

    .line 3302
    :cond_2
    if-ne p2, v1, :cond_0

    .line 3303
    const v0, 0x7f02044d

    goto :goto_0

    .line 3294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hasDataService(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1090
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 1091
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1096
    :pswitch_0
    const/4 v0, 0x1

    .line 1099
    :cond_0
    :pswitch_1
    return v0

    .line 1091
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hasService(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1075
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v2, p1

    .line 1076
    .local v0, "ss":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1082
    :pswitch_0
    const/4 v1, 0x1

    .line 1085
    :cond_0
    :pswitch_1
    return v1

    .line 1077
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initDualSimUiValue()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3524
    const-string v1, "ril.MSIMM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3533
    .local v0, "mSimMode":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_1"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setSimIconIndex(II)V

    .line 3534
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_2"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setSimIconIndex(II)V

    .line 3551
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlot(I)V

    .line 3553
    return-void
.end method

.method private isCdma(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdmaCall(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1254
    const/4 v0, 0x0

    .line 1255
    .local v0, "result":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v1, v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v1, v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(J)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_1

    .line 1258
    const/4 v0, 0x1

    .line 1261
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCdmaCall() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    return v0
.end method

.method private isCmccCard(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1128
    const-string v1, ""

    .line 1129
    .local v1, "simNum":Ljava/lang/String;
    const-string v0, ""

    .line 1131
    .local v0, "imsi":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return v2

    .line 1134
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 1136
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 1137
    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1140
    :cond_2
    const-string v3, "46000"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "46002"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "46007"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1141
    :cond_3
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "isCmccCard "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isEvdo(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLTE(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkRoaming(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1985
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    .line 1986
    .local v2, "subIdtemp":[J
    if-eqz v2, :cond_0

    .line 1987
    aget-wide v0, v2, v3

    .line 1988
    .local v0, "subId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 1989
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(J)Z

    move-result v3

    .line 1994
    .end local v0    # "subId":J
    :cond_0
    return v3
.end method

.method private isRoaming(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 1524
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    goto :goto_0
.end method

.method private isSIMLockedOfSlot(I)Z
    .locals 7
    .param p1, "simSlot"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 3426
    const/4 v2, 0x0

    .line 3428
    .local v2, "result":Z
    const-string v4, "gsm.sim.currentcardstatus"

    const-string v5, "9,9"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3429
    .local v1, "cardStatusTemp":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3430
    .local v0, "cardStatusSlot":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 3440
    :goto_0
    return v3

    .line 3436
    :cond_0
    if-nez p1, :cond_1

    const-string v4, "1"

    aget-object v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-ne p1, v6, :cond_3

    const-string v3, "1"

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3438
    :cond_2
    const/4 v2, 0x1

    :cond_3
    move v3, v2

    .line 3440
    goto :goto_0
.end method

.method private isSIMOFFOfSlot(I)Z
    .locals 10
    .param p1, "simSlot"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 3444
    const/4 v2, 0x0

    .line 3446
    .local v2, "result":Z
    const-string v6, "gsm.sim.currentcardstatus"

    const-string v7, "9,9"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3447
    .local v1, "cardStatusTemp":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3448
    const-string v1, "9,9"

    .line 3450
    :cond_0
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3451
    .local v0, "cardStatusSlot":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 3473
    :cond_1
    :goto_0
    return v5

    .line 3456
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "phone1_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3457
    .local v3, "simDBvalue0":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "phone2_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 3458
    .local v4, "simDBvalue1":I
    const-string v6, "StatusBar.MSimNetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSIMOFFOfSlot simDBvalue0 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", simDBvalue1 ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3459
    const-string v6, "1"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "1"

    aget-object v7, v0, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3460
    :cond_3
    if-nez p1, :cond_4

    const-string v6, "2"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    if-ne p1, v9, :cond_1

    const-string v6, "2"

    aget-object v7, v0, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3462
    :cond_5
    const/4 v2, 0x1

    move v5, v2

    .line 3463
    goto :goto_0

    .line 3468
    :cond_6
    if-nez p1, :cond_7

    const-string v6, "2"

    aget-object v5, v0, v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v3, :cond_8

    :cond_7
    if-ne p1, v9, :cond_9

    const-string v5, "2"

    aget-object v6, v0, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    if-nez v4, :cond_9

    .line 3470
    :cond_8
    const/4 v2, 0x1

    :cond_9
    move v5, v2

    .line 3473
    goto/16 :goto_0
.end method

.method private isSglteMode(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 3754
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v1, v1, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v1, v1, p1

    if-nez v1, :cond_0

    .line 3765
    :goto_0
    return v0

    .line 3757
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    .line 3758
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getSglteRssiDisplayNum()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSglteMode:I

    .line 3759
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSglteMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3760
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "isSglteMode is true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    const/4 v0, 0x1

    goto :goto_0

    .line 3764
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    const-string v2, "isSglteMode is false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSimCardInserted(I)Z
    .locals 8
    .param p0, "slotidx"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3393
    const-string v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3394
    .local v3, "simMode":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3395
    if-nez p0, :cond_1

    .line 3422
    :cond_0
    :goto_0
    return v5

    :cond_1
    move v5, v4

    .line 3398
    goto :goto_0

    .line 3402
    :cond_2
    const-string v6, "ril.ICC_TYPE"

    const-string v7, "0,0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3403
    .local v1, "iccTemp":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3404
    .local v0, "iccStatusSlot":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 3410
    const/4 v2, 0x0

    .line 3411
    .local v2, "key":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 3419
    :goto_1
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3422
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    move v5, v4

    goto :goto_0

    .line 3413
    :pswitch_0
    aget-object v2, v0, v5

    .line 3414
    goto :goto_1

    .line 3416
    :pswitch_1
    aget-object v2, v0, v4

    goto :goto_1

    :cond_3
    move v4, v5

    .line 3422
    goto :goto_2

    .line 3411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isWCDMA(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private radioTechnologyToNetworkType(I)I
    .locals 1
    .param p1, "rt"    # I

    .prologue
    .line 3666
    packed-switch p1, :pswitch_data_0

    .line 3703
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3668
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3670
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 3672
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 3674
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 3676
    :pswitch_4
    const/16 v0, 0x9

    goto :goto_0

    .line 3678
    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    .line 3681
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 3683
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 3685
    :pswitch_8
    const/4 v0, 0x5

    goto :goto_0

    .line 3687
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_0

    .line 3689
    :pswitch_a
    const/16 v0, 0xc

    goto :goto_0

    .line 3691
    :pswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 3693
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 3695
    :pswitch_d
    const/16 v0, 0xf

    goto :goto_0

    .line 3697
    :pswitch_e
    const/16 v0, 0x11

    goto :goto_0

    .line 3699
    :pswitch_f
    const/16 v0, 0x10

    goto :goto_0

    .line 3701
    :pswitch_10
    const/16 v0, 0x12

    goto :goto_0

    .line 3666
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method private refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;)V
    .locals 15
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;

    .prologue
    .line 2945
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLevel:I

    aget v3, v0, v1

    .line 2946
    .local v3, "nwboosterWifiIconId":I
    const v4, 0x7f02055a

    .line 2948
    .local v4, "nwboosterDataActivityIconId":I
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    if-eqz v0, :cond_d

    .line 2949
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    const/4 v14, 0x1

    .line 2951
    .local v14, "showBoosterIcon":Z
    :goto_0
    if-eqz v14, :cond_c

    .line 2952
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    if-eqz v0, :cond_b

    .line 2953
    const/4 v12, 0x0

    .line 2954
    .local v12, "nw_data_in":Z
    const/4 v13, 0x0

    .line 2956
    .local v13, "nw_data_out":Z
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2958
    :cond_0
    const/4 v12, 0x1

    .line 2968
    :cond_1
    :goto_1
    if-eqz v12, :cond_8

    if-eqz v13, :cond_8

    .line 2969
    const v4, 0x7f020559

    .line 2978
    :cond_2
    :goto_2
    const/4 v1, 0x1

    const/4 v2, 0x1

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 2993
    .end local v12    # "nw_data_in":Z
    .end local v13    # "nw_data_out":Z
    :goto_3
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster - setNWBoosterIndicators(true), showBoosterIcon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    .end local v14    # "showBoosterIcon":Z
    :goto_4
    return-void

    .line 2949
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 2959
    .restart local v12    # "nw_data_in":Z
    .restart local v13    # "nw_data_out":Z
    .restart local v14    # "showBoosterIcon":Z
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2961
    :cond_5
    const/4 v13, 0x1

    goto :goto_1

    .line 2962
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2964
    :cond_7
    const/4 v12, 0x1

    .line 2965
    const/4 v13, 0x1

    goto :goto_1

    .line 2970
    :cond_8
    if-eqz v12, :cond_9

    if-nez v13, :cond_9

    .line 2971
    const v4, 0x7f020558

    goto :goto_2

    .line 2972
    :cond_9
    if-nez v12, :cond_a

    if-eqz v13, :cond_a

    .line 2973
    const v4, 0x7f02055b

    goto :goto_2

    .line 2974
    :cond_a
    if-nez v12, :cond_2

    if-nez v13, :cond_2

    .line 2975
    const v4, 0x7f02055a

    goto :goto_2

    .line 2982
    .end local v12    # "nw_data_in":Z
    .end local v13    # "nw_data_out":Z
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    aget v8, v0, v1

    .line 2984
    .local v8, "mDimNWBoosterWifiIcon":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v9, 0x7f020559

    iget v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v11, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v5 .. v11}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_3

    .line 2989
    .end local v8    # "mDimNWBoosterWifiIcon":I
    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_3

    .line 2997
    .end local v14    # "showBoosterIcon":Z
    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_4
.end method

.method private refreshSignalIconForCTCRoamingCall()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3769
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3770
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v1, :cond_3

    .line 3771
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V

    .line 3772
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 3773
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRoamingIcon(I)V

    .line 3774
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 3770
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3777
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v1, :cond_3

    .line 3778
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V

    .line 3779
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 3780
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 3777
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3783
    :cond_3
    return-void
.end method

.method private setCarrierText()V
    .locals 5

    .prologue
    .line 841
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->PHONE_ID1:I

    aget-object v0, v3, v4

    .line 842
    .local v0, "carrierName":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v1, v3, :cond_0

    .line 843
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 842
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 846
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 847
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 848
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 849
    .local v2, "v":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 852
    .end local v2    # "v":Landroid/widget/TextView;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 853
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 854
    .restart local v2    # "v":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 858
    .end local v2    # "v":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private setCurrentSimSlotIcon()V
    .locals 0

    .prologue
    .line 3576
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon_Other()V

    .line 3577
    return-void
.end method

.method private setCurrentSimSlotIcon_Other()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3580
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getNumberOfSim()I

    move-result v1

    .line 3581
    .local v1, "numberOfSim":I
    const/4 v2, -0x1

    .line 3585
    .local v2, "simIconIndex":I
    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v3, v4, :cond_3

    .line 3588
    :cond_0
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon setIcon: invisible"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 3590
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 3650
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-ne v3, v5, :cond_7

    .line 3651
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 3656
    :goto_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v3, :cond_2

    .line 3657
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getReadySimCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 3658
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon ReadySim =0::invisible"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 3662
    :cond_2
    return-void

    .line 3591
    :cond_3
    if-ne v1, v5, :cond_5

    .line 3592
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3594
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon for SIM 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    .line 3600
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 3604
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    goto :goto_0

    .line 3605
    :cond_4
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3607
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon for SIM 1"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    .line 3613
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 3617
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    goto :goto_0

    .line 3619
    :cond_5
    if-ne v1, v4, :cond_1

    .line 3620
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCurrentSimSlot()I

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v3

    if-eqz v3, :cond_6

    .line 3621
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    .line 3626
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 3630
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 3644
    :goto_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3645
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 3644
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3632
    .end local v0    # "i":I
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    .line 3637
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 3641
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    goto :goto_2

    .line 3653
    :cond_7
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    goto/16 :goto_1
.end method

.method private setSimIconIndex(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "simId"    # I

    .prologue
    .line 3556
    if-nez p2, :cond_1

    .line 3557
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSim1Icon:I

    .line 3561
    :cond_0
    :goto_0
    return-void

    .line 3558
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3559
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSim2Icon:I

    goto :goto_0
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 460
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 461
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 460
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    :cond_1
    return-void
.end method

.method private final updateCMCCDataNetType(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const v2, 0x7f0d0240

    .line 1418
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 1420
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateCMCCDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 1451
    :goto_0
    :pswitch_0
    return-void

    .line 1427
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1428
    :cond_0
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateDataNetType() : Cmcc"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1430
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f020367

    aput v1, v0, p1

    .line 1435
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1432
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1433
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f02038c

    aput v1, v0, p1

    goto :goto_1

    .line 1439
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1440
    :cond_2
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateDataNetType() : Cmcc"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1442
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f02036d

    aput v1, v0, p1

    .line 1447
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1444
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1445
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f02038d

    aput v1, v0, p1

    goto :goto_2

    .line 1422
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateCTCDataNetType(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const v4, 0x7f0d0243

    const v2, 0x7f020364

    const v3, 0x7f020365

    .line 1468
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 1470
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateCTCDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 1515
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p1

    const v1, 0x7f020389

    if-ne v0, v1, :cond_1

    .line 1516
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    .line 1518
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getReadySimCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1519
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 1521
    :cond_2
    return-void

    .line 1474
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1475
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    .line 1476
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0245

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1481
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1482
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1486
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v2, v0, p1

    .line 1488
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1483
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    goto :goto_1

    .line 1492
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1493
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1497
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v2, v0, p1

    .line 1499
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 1494
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    goto :goto_2

    .line 1506
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1507
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1508
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f020367

    aput v1, v0, p1

    .line 1509
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0240

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 1472
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private final updateCUDataNetType(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1454
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 1456
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateCUDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 1465
    :goto_0
    return-void

    .line 1460
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f020376

    aput v1, v0, p1

    .line 1461
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0242

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1458
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateCarrierText(I)V
    .locals 4
    .param p1, "sub"    # I

    .prologue
    .line 798
    const/4 v0, 0x0

    .line 799
    .local v0, "textResId":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 800
    const v0, 0x104039f

    .line 835
    :goto_0
    if-eqz v0, :cond_0

    .line 836
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 838
    :cond_0
    return-void

    .line 803
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierText for sub:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    sget-object v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 830
    const v0, 0x104038b

    goto :goto_0

    .line 810
    :pswitch_0
    const v0, 0x104038b

    .line 811
    goto :goto_0

    .line 813
    :pswitch_1
    const v0, 0x104039d

    .line 814
    goto :goto_0

    .line 816
    :pswitch_2
    const v0, 0x104039b

    .line 817
    goto :goto_0

    .line 820
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v2, v2, p1

    aput-object v2, v1, p1

    goto :goto_0

    .line 823
    :pswitch_4
    const v0, 0x104038f

    .line 825
    goto :goto_0

    .line 827
    :pswitch_5
    const v0, 0x1040399

    .line 828
    goto :goto_0

    .line 806
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataIcon(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 1815
    const/4 v1, 0x0

    .line 1816
    .local v1, "iconId":I
    const/4 v2, 0x1

    .line 1817
    .local v2, "visible":Z
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 1820
    .local v0, "dataSub":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataIcon phoneId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dataSub ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v3, v3, p1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    .line 1829
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v3, :cond_0

    .line 1830
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v3, v3, p1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 1831
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v3, v3, p1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    .line 1833
    :cond_0
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataIcon( "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ) "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, " CDMA "

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mMSimState= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mDataNetType= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1837
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-nez v3, :cond_1

    .line 1839
    const/4 v2, 0x0

    .line 1843
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_6

    .line 1845
    :cond_2
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoSim:Z

    .line 1846
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    if-ne v3, v6, :cond_5

    .line 1847
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aget v3, v3, p1

    packed-switch v3, :pswitch_data_0

    .line 1858
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v7

    .line 1861
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aput v1, v3, p1

    .line 1899
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getReadySimCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 1900
    const/4 v2, 0x0

    .line 1903
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aput v1, v3, p1

    .line 1904
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aput v1, v3, p1

    .line 1905
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aput-boolean v2, v3, p1

    .line 1906
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataConnected:Z

    .line 1908
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataIcon when mMSimDataConnected["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mMSimMobileActivityIconId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    return-void

    .line 1833
    :cond_4
    const-string v3, " GSM : "

    goto/16 :goto_0

    .line 1849
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v8

    .line 1850
    goto :goto_1

    .line 1852
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 1853
    goto :goto_1

    .line 1855
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v9

    .line 1856
    goto :goto_1

    .line 1863
    :cond_5
    const/4 v1, 0x0

    .line 1864
    const/4 v2, 0x0

    goto :goto_2

    .line 1867
    :cond_6
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "updateDataIcon no sim"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoSim:Z

    .line 1870
    const/4 v1, 0x0

    .line 1871
    const/4 v2, 0x0

    .line 1874
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNoSIMNotification()V

    goto :goto_2

    .line 1878
    :cond_7
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    if-ne v3, v6, :cond_8

    .line 1879
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aget v3, v3, p1

    packed-switch v3, :pswitch_data_1

    .line 1891
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v7

    .line 1892
    goto/16 :goto_2

    .line 1881
    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v8

    .line 1882
    goto/16 :goto_2

    .line 1884
    :pswitch_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 1885
    goto/16 :goto_2

    .line 1887
    :pswitch_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v9

    .line 1888
    goto/16 :goto_2

    .line 1895
    :cond_8
    const/4 v1, 0x0

    .line 1896
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1847
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1879
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .prologue
    const v9, 0x7f020364

    const/4 v8, 0x0

    const v7, 0x7f0d023f

    const v6, 0x7f0203c4

    const v5, 0x7f020367

    .line 1530
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 1537
    .local v0, "dataSub":I
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1538
    .local v1, "mBackUpNwboosterDataTypeIconId":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v2, v2, p1

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 1539
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v2, :cond_1

    .line 1541
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1542
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f0203a2

    aput v3, v2, p1

    .line 1543
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1544
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0241

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1548
    const v2, 0x7f0203c7

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1758
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v2, :cond_0

    if-eq p1, v0, :cond_0

    .line 1759
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1764
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRoamingIcon(I)V

    .line 1766
    return-void

    .line 1551
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v2, :cond_2

    .line 1552
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v2, v2, p1

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 1554
    :cond_2
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataNetType sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDataNetType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    packed-switch v2, :pswitch_data_0

    .line 1747
    :pswitch_0
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataNetType unknown radio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    iput v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 1750
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v8, v2, p1

    iput v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1753
    const v2, 0x7f0203d7

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 1559
    :pswitch_1
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "updateDataNetType NETWORK_TYPE_UNKNOWN"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_3

    .line 1562
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1563
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v8, v2, p1

    .line 1564
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1565
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d023c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1569
    const v2, 0x7f0203d7

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1576
    :cond_3
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_4

    .line 1577
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1578
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f020388

    aput v3, v2, p1

    .line 1580
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1581
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0245

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1585
    const v2, 0x7f0203ce

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1593
    :cond_4
    :pswitch_3
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1594
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v2, p1

    .line 1595
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1596
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1600
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1607
    :pswitch_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v2, :cond_5

    .line 1608
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1609
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f02038c

    aput v3, v2, p1

    .line 1611
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1612
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0240

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1616
    const v2, 0x7f0203d0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1620
    :cond_5
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1621
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v2, p1

    .line 1623
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1624
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1628
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1634
    :pswitch_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v2, :cond_6

    .line 1635
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1636
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f02038d

    aput v3, v2, p1

    .line 1637
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0240

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1640
    const v2, 0x7f0203d1

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1642
    :cond_6
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1643
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v2, p1

    .line 1644
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1647
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1653
    :pswitch_6
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1654
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v9, v2, p1

    .line 1656
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1657
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0243

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1661
    const v2, 0x7f0203c2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1665
    :pswitch_7
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1666
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v9, v2, p1

    .line 1668
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1669
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0243

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1673
    const v2, 0x7f0203c2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1681
    :pswitch_8
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1682
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v2, p1

    .line 1684
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1685
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1689
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1696
    :pswitch_9
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShow4GforLTE:Z

    if-eqz v2, :cond_7

    .line 1697
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1698
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f020370

    aput v3, v2, p1

    .line 1699
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1700
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0241

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1704
    const v2, 0x7f0203c7

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1707
    :cond_7
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1708
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f02038f

    aput v3, v2, p1

    .line 1709
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1710
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0242

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1714
    const v2, 0x7f0203d2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1720
    :pswitch_a
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_8

    .line 1721
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1722
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f020389

    aput v3, v2, p1

    .line 1724
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1725
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d023c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1729
    const v2, 0x7f0203cf

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1733
    :cond_8
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1734
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v2, p1

    .line 1736
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1737
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1741
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1556
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private updateDualSimUiBySettings(ILjava/lang/String;)V
    .locals 4
    .param p1, "simId"    # I
    .param p2, "imageIndex"    # Ljava/lang/String;

    .prologue
    .line 3480
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3481
    :cond_0
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageIndex NULL return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    :goto_0
    return-void

    .line 3484
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3485
    .local v0, "iconIndex":I
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setSimIconIndex(II)V

    .line 3487
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    goto :goto_0
.end method

.method private updateIconSet(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    .line 1794
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIconSet, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v7

    .line 1796
    .local v7, "voiceNetorkType":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v6

    .line 1797
    .local v6, "dataNetorkType":I
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIconSet, voice network type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data network type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    if-nez v6, :cond_0

    move v1, v7

    .line 1805
    .local v1, "chosenNetworkType":I
    :goto_0
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIconSet, chosenNetworkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hspaDataDistinguishable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hspapDistinguishable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " showAtLeastThreeGees="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShow4GforLTE:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->updateDataType(IIZZZI)V

    .line 1812
    return-void

    .end local v1    # "chosenNetworkType":I
    :cond_0
    move v1, v6

    .line 1802
    goto :goto_0
.end method

.method private updateNoSIMNotification()V
    .locals 14

    .prologue
    .line 2834
    const-string v10, "ro.config.donot_nosim"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2835
    const-string v10, "StatusBar.MSimNetworkController"

    const-string v11, "Don\'t show No SIM Notification"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    :cond_0
    :goto_0
    return-void

    .line 2839
    :cond_1
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-nez v10, :cond_0

    .line 2843
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 2846
    .local v4, "numPhones":I
    const/4 v2, 0x1

    .line 2847
    .local v2, "isNoSim":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 2848
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v10, v10, v1

    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v10, v11, :cond_3

    .line 2849
    const/4 v2, 0x0

    .line 2855
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 2857
    .local v3, "mgr":Landroid/app/NotificationManager;
    if-nez v2, :cond_4

    .line 2858
    const/16 v10, 0x111

    invoke-virtual {v3, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 2847
    .end local v3    # "mgr":Landroid/app/NotificationManager;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2860
    .restart local v3    # "mgr":Landroid/app/NotificationManager;
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2863
    .local v5, "res":Landroid/content/res/Resources;
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v10, :cond_6

    .line 2864
    const v10, 0x7f0d0414

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2872
    .local v9, "title":Ljava/lang/String;
    :goto_2
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v10, :cond_8

    .line 2873
    const v10, 0x7f0d0416

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2878
    .local v8, "text":Ljava/lang/String;
    :goto_3
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const v11, 0x7f0203f3

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2886
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v10, :cond_5

    .line 2887
    const v10, 0x7f0203f8

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2889
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SIM_TYPE_POPUP"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2890
    .local v6, "resultIntent":Landroid/content/Intent;
    const-string v10, "SIM_TYPE"

    const-string v11, "NO_SIM"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2891
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v12, 0x8000000

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2893
    .local v7, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2896
    .end local v6    # "resultIntent":Landroid/content/Intent;
    .end local v7    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_5
    const/16 v10, 0x111

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2865
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_6
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mNoSIMNotificationForTMO:Z

    if-eqz v10, :cond_7

    .line 2866
    const v10, 0x7f0d0413

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "title":Ljava/lang/String;
    goto :goto_2

    .line 2868
    .end local v9    # "title":Ljava/lang/String;
    :cond_7
    const v10, 0x7f0d0412

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "title":Ljava/lang/String;
    goto :goto_2

    .line 2875
    :cond_8
    const v10, 0x7f0d0415

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "text":Ljava/lang/String;
    goto :goto_3
.end method

.method private final updateSimIcon(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1785
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateSimIcon card ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 1787
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    const v1, 0x7f020133

    aput v1, v0, p1

    .line 1791
    :goto_0
    return-void

    .line 1789
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    goto :goto_0
.end method

.method private final updateTelephonySignalStrength(I)V
    .locals 12
    .param p1, "phoneId"    # I

    .prologue
    const v11, 0x7f02014f

    const/4 v10, 0x1

    const v9, 0x7f020698

    const/4 v8, 0x0

    .line 1266
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength: phoneId ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    if-nez p1, :cond_2

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v4

    .line 1270
    .local v4, "simActive":I
    :goto_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 1272
    .local v0, "dataSub":I
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v5, v5, p1

    if-eqz v5, :cond_3

    .line 1274
    const-string v5, "StatusBar.MSimNetworkController"

    const-string v6, " No service"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v9, v5, p1

    .line 1276
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v9, v5, p1

    .line 1291
    if-ne p1, v0, :cond_0

    .line 1292
    iput v11, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1294
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v8, v5, p1

    .line 1296
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1297
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRssiTypeIconCTC(I)V

    .line 1415
    :cond_1
    :goto_1
    return-void

    .line 1268
    .end local v0    # "dataSub":I
    .end local v4    # "simActive":I
    :cond_2
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v4

    goto :goto_0

    .line 1300
    .restart local v0    # "dataSub":I
    .restart local v4    # "simActive":I
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    if-nez v5, :cond_7

    .line 1302
    :cond_4
    const-string v6, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Null object, mMSimSignalStrength= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v7, v7, p1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mMSimServiceState "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, p1

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v9, v5, p1

    .line 1307
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v9, v5, p1

    .line 1308
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 1310
    if-ne p1, v0, :cond_5

    .line 1311
    iput v11, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1313
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v8, v5, p1

    goto :goto_1

    .line 1302
    :cond_6
    const-string v5, " null "

    goto :goto_2

    .line 1317
    :cond_7
    const/4 v3, 0x0

    .line 1318
    .local v3, "psIconLevel":I
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v5, :cond_9

    .line 1319
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    .local v1, "iconLevel":I
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    .line 1320
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAlwaysShowCdmaRssi= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " set to cdmaLevel= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " instead of level= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getNumberOfSim()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCurrentSimSlot()I

    move-result v5

    if-ne v5, p1, :cond_a

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMLockedOfSlot(I)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1342
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v10, v5, p1

    .line 1352
    :goto_4
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v1, v5, :cond_b

    .line 1353
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength:iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too high"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    .line 1361
    :cond_8
    :goto_5
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v5, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneSignalIconList(II)[I

    move-result-object v2

    .line 1378
    .local v2, "iconList":[I
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mInetCondition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1381
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRssiTypeIconCTC(I)V

    .line 1382
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1383
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCdmaPhoneSignalIconId(I)I

    move-result v6

    aput v6, v5, p1

    .line 1384
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 1386
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v6, v6, p1

    aput v6, v5, p1

    .line 1412
    :goto_6
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength: iconLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1337
    .end local v1    # "iconLevel":I
    .end local v2    # "iconList":[I
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    .restart local v1    # "iconLevel":I
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    goto/16 :goto_3

    .line 1344
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v8, v5, p1

    goto/16 :goto_4

    .line 1356
    :cond_b
    if-gez v1, :cond_8

    .line 1357
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength:iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too low"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    goto/16 :goto_5

    .line 1388
    .restart local v2    # "iconList":[I
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v6, v2, v1

    aput v6, v5, p1

    .line 1389
    if-ne p1, v0, :cond_d

    .line 1390
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v5, v5, v6

    aget v5, v5, v1

    iput v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1393
    :cond_d
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 1395
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v6, v1, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDataSignalIconId(III)I

    move-result v6

    aput v6, v5, p1

    goto :goto_6

    .line 1398
    :cond_e
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v6, v2, v1

    aput v6, v5, p1

    .line 1399
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 1401
    if-ne p1, v0, :cond_f

    .line 1402
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v5, v5, v6

    aget v5, v5, v1

    iput v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1408
    :cond_f
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v6, v1, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDataSignalIconId(III)I

    move-result v6

    aput v6, v5, p1

    goto/16 :goto_6
.end method


# virtual methods
.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 1
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 470
    return-void
.end method

.method public addSubsLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    return-void
.end method

.method protected createWifiHandler()V
    .locals 4

    .prologue
    .line 391
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 392
    new-instance v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    .line 393
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 394
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 395
    .local v1, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v1, :cond_0

    .line 396
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 398
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "phoneId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkController for SUB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2679
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2682
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2683
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2684
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2685
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2686
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2687
    const-string v0, "  mMSimDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2688
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2689
    const-string v0, "  mMSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2690
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2691
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2692
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2693
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2694
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2695
    const-string v0, "  mSeperatedDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2696
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2697
    const-string v0, "  mMSimDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2698
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2699
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2700
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2701
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2702
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2703
    const-string v0, "  mSeperatedDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2704
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2705
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2706
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p4

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2707
    const-string v0, "  mMSimServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2708
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2709
    const-string v0, "  mMSimSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2710
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2711
    const-string v0, "  mLastSignalLevel"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2712
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2713
    const-string v0, "  mMSimNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2714
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2715
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2716
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2717
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2718
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2719
    const-string v0, "  mMSimPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2720
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2721
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2722
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2723
    const-string v0, "  mRssiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2724
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2725
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2726
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2727
    const-string v0, "  mMSimDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2728
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2729
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2730
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2731
    const-string v0, "  mMSimDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2732
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2733
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2734
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2735
    const-string v0, "  mMSimDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2736
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2737
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2738
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2739
    const-string v0, " mCurrentSimSlot= "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2740
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2741
    const-string v0, " mSimFocus = "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2742
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2743
    const-string v0, " mRoamingIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2744
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2745
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2746
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2748
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2749
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2750
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2751
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2752
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2753
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2754
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2755
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2756
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2757
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2758
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2759
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2761
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2762
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2763
    const-string v0, "mDataStateDual ="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2764
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2766
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 2767
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2768
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2769
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2770
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2771
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2773
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2774
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2775
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2778
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2779
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2780
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2782
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2783
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2784
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2786
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2787
    const-string v0, "  mMSimLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2788
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2789
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2790
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2791
    const-string v0, "  mMSimLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2792
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2793
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2794
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2795
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2796
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2797
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2798
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2799
    const-string v0, "  mMSimLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2800
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2801
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2802
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2803
    const-string v0, "  mMSimLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2804
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2805
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2806
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2807
    const-string v0, "  mMSimLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2808
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2809
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2810
    return-void

    .line 2679
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method public getDataNetworkType(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 2664
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 2665
    const/4 v0, 0x0

    .line 2667
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method protected getDataSignalIconId(III)I
    .locals 4
    .param p1, "inetCondition"    # I
    .param p2, "iconLevel"    # I
    .param p3, "phoneId"    # I

    .prologue
    .line 3787
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataSignalIconId: mMaxLevelOfSignalStrengthIndicator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inetCondition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iconLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 3812
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3814
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 3795
    .end local v0    # "iconId":I
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3796
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_CTC:[I

    aget v0, v1, p2

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3798
    .end local v0    # "iconId":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_1

    .line 3799
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

    aget v0, v1, p2

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3801
    .end local v0    # "iconId":I
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3804
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3806
    .end local v0    # "iconId":I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3807
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3809
    .end local v0    # "iconId":I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3810
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3793
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getGsmSignalLevel(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 2671
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 2672
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    const/4 v0, 0x0

    .line 2674
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    goto :goto_0
.end method

.method public getNumberOfSim()I
    .locals 3

    .prologue
    .line 3492
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3493
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumberOfActiveSim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3497
    :goto_0
    return v0

    .line 3496
    :cond_0
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "getNumberOfActiveSim:1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getPhoneSignalIconList(II)[I
    .locals 4
    .param p1, "inetCondition"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1955
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneSignalIconList: mMaxLevelOfSignalStrengthIndicator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inetCondition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 1979
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 1981
    .local v0, "iconList":[I
    :goto_0
    return-object v0

    .line 1962
    .end local v0    # "iconList":[I
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1963
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 1965
    .end local v0    # "iconList":[I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v1, v1, p2

    if-eqz v1, :cond_1

    .line 1966
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 1968
    .end local v0    # "iconList":[I
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 1971
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 1973
    .end local v0    # "iconList":[I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 1974
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 1976
    .end local v0    # "iconList":[I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 1977
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 1960
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getReadySimCount()I
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 3708
    const/4 v2, 0x0

    .line 3709
    .local v2, "count":I
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-eqz v7, :cond_3

    .line 3710
    new-array v3, v10, [I

    .line 3711
    .local v3, "phone_on":[I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone1_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v3, v6

    .line 3712
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone2_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v3, v9

    .line 3713
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "9,9"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3714
    .local v1, "cardStatusTemp":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3715
    .local v0, "cardStatusSlot":[Ljava/lang/String;
    array-length v7, v0

    if-eq v7, v10, :cond_0

    .line 3731
    .end local v0    # "cardStatusSlot":[Ljava/lang/String;
    .end local v1    # "cardStatusTemp":Ljava/lang/String;
    .end local v3    # "phone_on":[I
    :goto_0
    return v6

    .line 3717
    .restart local v0    # "cardStatusSlot":[Ljava/lang/String;
    .restart local v1    # "cardStatusTemp":Ljava/lang/String;
    .restart local v3    # "phone_on":[I
    :cond_0
    const/4 v5, 0x0

    .local v5, "sub":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 3718
    const-string v6, "3"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget v6, v3, v5

    if-ne v6, v9, :cond_1

    .line 3719
    add-int/lit8 v2, v2, 0x1

    .line 3717
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v6, v2

    .line 3722
    goto :goto_0

    .line 3724
    .end local v0    # "cardStatusSlot":[Ljava/lang/String;
    .end local v1    # "cardStatusTemp":Ljava/lang/String;
    .end local v3    # "phone_on":[I
    .end local v5    # "sub":I
    :cond_3
    const-string v4, "NOT_READY"

    .line 3725
    .local v4, "simState":Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "sub":I
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 3726
    const-string v6, "gsm.sim.state"

    const-string v7, "NOT_READY"

    invoke-static {v6, v5, v7}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3727
    const-string v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3728
    add-int/lit8 v2, v2, 0x1

    .line 3725
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move v6, v2

    .line 3731
    goto :goto_0
.end method

.method public getVoiceNetworkType(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 2658
    const/4 v0, 0x0

    .line 2660
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method isCdmaEri(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1769
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v3, v3, p1

    if-nez v3, :cond_2

    .line 1772
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 1773
    .local v0, "iconIndex":I
    if-eq v0, v2, :cond_2

    .line 1774
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 1775
    .local v1, "iconMode":I
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 1781
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isFlightModePossible()Z
    .locals 5

    .prologue
    .line 3374
    const/4 v0, 0x0

    .line 3375
    .local v0, "flightModePossible":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v2, :cond_2

    .line 3376
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 3378
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3380
    :cond_0
    const/4 v0, 0x1

    .line 3376
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3382
    :cond_1
    const/4 v0, 0x0

    .line 3383
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flightModePossible=false : mSim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":mServiceState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simHasService()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isEmergencyOnly()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 649
    .local v10, "action":Ljava/lang/String;
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 652
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWifiState(Landroid/content/Intent;)V

    .line 653
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 791
    :cond_1
    :goto_0
    return-void

    .line 654
    :cond_2
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 655
    const-string v4, "StatusBar.MSimNetworkController"

    const-string v5, "onReceive() - ACTION_SIM_STATE_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimState(Landroid/content/Intent;)V

    .line 657
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 658
    const/16 v18, 0x0

    .local v18, "sub":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_1

    .line 659
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 660
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 662
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCmccCard(I)Z

    move-result v5

    aput-boolean v5, v4, v18

    .line 658
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 664
    .end local v18    # "sub":I
    :cond_3
    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 665
    const-string v4, "subscription"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    .line 666
    .local v20, "subId":J
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received SPN update on subId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 668
    .local v13, "phoneId":Ljava/lang/Integer;
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received SPN update on phoneId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 670
    const-string v4, "StatusBar.MSimNetworkController"

    const-string v5, "SPN_STRINGS_UPDATED broadcast with phone Id 1"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 673
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "showSpn"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    aput-boolean v6, v4, v5

    .line 674
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "spn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 675
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "showPlmn"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    aput-boolean v6, v4, v5

    .line 677
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "plmn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 679
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-boolean v5, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v6, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-boolean v7, v4, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v4, v8

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 681
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 682
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 683
    .end local v13    # "phoneId":Ljava/lang/Integer;
    .end local v20    # "subId":J
    :cond_5
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 685
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateConnectivity(Landroid/content/Intent;)V

    .line 686
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 687
    :cond_7
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 688
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 689
    :cond_8
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateAirplaneMode()V

    .line 691
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v12, v4, :cond_9

    .line 692
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimIcon(I)V

    .line 693
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 695
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 691
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 698
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 699
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 700
    .end local v12    # "i":I
    :cond_a
    const-string v4, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 703
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWimaxState(Landroid/content/Intent;)V

    .line 704
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 705
    :cond_c
    const-string v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 706
    const-string v4, "StatusBar.MSimNetworkController"

    const-string v5, "ACTION_SUBINFO_RECORD_UPDATED received"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->unregisterPhoneStateListener()V

    .line 708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 709
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 711
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 712
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 715
    :cond_d
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current Sim Slot value after intent change  : : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlot(I)V

    .line 717
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 720
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v12, v4, :cond_1

    .line 721
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 722
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 723
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 724
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 725
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 720
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 727
    .end local v12    # "i":I
    :cond_e
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 729
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNoSIMNotification()V

    goto/16 :goto_0

    .line 731
    :cond_f
    const-string v4, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 732
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v16

    .line 733
    .local v16, "simId1":I
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive() - ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED : simId1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlot(I)V

    .line 736
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 739
    const/16 v18, 0x0

    .restart local v18    # "sub":I
    :goto_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_1

    .line 740
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 739
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 742
    .end local v16    # "simId1":I
    .end local v18    # "sub":I
    :cond_10
    const-string v4, "android.settings.SIMCARD_MGT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 743
    const-string v4, "simcard_sim_id"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 744
    .local v15, "simId":I
    const-string v4, "simcard_sim_icon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 745
    .local v14, "simIconIndex":Ljava/lang/String;
    const-string v4, "simcard_sim_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 746
    .local v17, "simName":Ljava/lang/String;
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive() - ACTION_SIM_MGT_CHANGED :  simId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",simIconIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",simName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", (mCurrentSimSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDualSimUiBySettings(ILjava/lang/String;)V

    .line 750
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    if-eq v4, v15, :cond_11

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-eqz v4, :cond_1

    .line 751
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 753
    .end local v14    # "simIconIndex":Ljava/lang/String;
    .end local v15    # "simId":I
    .end local v17    # "simName":Ljava/lang/String;
    :cond_12
    const-string v4, "android.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 755
    const-string v4, "simcard_sim_id"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 756
    .restart local v15    # "simId":I
    const-string v4, "simcard_sim_activate"

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 758
    .local v11, "activate":I
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive() - ACTION_SIM_MGT_ACTIVATED_CHANGED : simId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",activate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CTC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 760
    const/4 v4, 0x1

    if-ne v11, v4, :cond_13

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v5, v4, v15

    .line 773
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 776
    const/16 v18, 0x0

    .restart local v18    # "sub":I
    :goto_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_1

    .line 777
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 776
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 781
    .end local v11    # "activate":I
    .end local v15    # "simId":I
    .end local v18    # "sub":I
    :cond_14
    const-string v4, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 782
    const-string v4, "StatusBar.MSimNetworkController"

    const-string v5, "START_NETWORK_BOOSTER"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 785
    :cond_15
    const-string v4, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 786
    const-string v4, "StatusBar.MSimNetworkController"

    const-string v5, "STOP_NETWORK_BOOSTER"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 788
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 13
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v1, 0x1

    .line 475
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;)V

    .line 478
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAppopsStrictEnabled:Z

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 485
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v0, :cond_3

    .line 486
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCHN(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 502
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v0, :cond_5

    .line 504
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v3, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v4, v0, p2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v8, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v9, v0, p2

    move-object v0, p1

    move v7, p2

    invoke-interface/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIZ)V

    .line 539
    :cond_1
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setIsAirplaneMode(ZI)V

    .line 542
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMSimPhoneSignalIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMSimDataSignalIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMSimDataTypeIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMSimMobileActivityIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNoMSimIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setSimIcon(ZI)V

    .line 556
    return-void

    :cond_2
    move v0, v12

    .line 478
    goto/16 :goto_0

    .line 489
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyOpen(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    goto/16 :goto_1

    .line 504
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    goto/16 :goto_2

    .line 515
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_6

    move v3, v1

    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v4, v0, p2

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v5, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v7, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v8, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v10, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v11, v0, p2

    move-object v2, p1

    move v9, p2

    invoke-interface/range {v2 .. v11}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIZ)V

    .line 525
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v0, :cond_1

    .line 526
    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v7, v0, 0x2

    .line 527
    .local v7, "opPhoneId":I
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_8

    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v2, v0, v7

    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v3, v0, v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v4, v0, v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v5, v0, v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v8, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v9, v0, v7

    move-object v0, p1

    invoke-interface/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIZ)V

    goto/16 :goto_3

    .end local v7    # "opPhoneId":I
    :cond_6
    move v3, v12

    .line 515
    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v4, v0, p2

    goto :goto_5

    .restart local v7    # "opPhoneId":I
    :cond_8
    move v1, v12

    .line 527
    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v2, v0, v7

    goto :goto_7
.end method

.method protected refreshViews(I)V
    .locals 18
    .param p1, "phoneId"    # I

    .prologue
    .line 2183
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 2185
    .local v6, "context":Landroid/content/Context;
    const-string v5, ""

    .line 2186
    .local v5, "combinedLabel":Ljava/lang/String;
    const-string v11, ""

    .line 2187
    .local v11, "mobileLabel":Ljava/lang/String;
    const-string v13, ""

    .line 2189
    .local v13, "wifiLabel":Ljava/lang/String;
    const-string v14, "StatusBar.MSimNetworkController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refreshViews phoneId ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mMSimDataConnected ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    move-object/from16 v16, v0

    aget-boolean v16, v16, p1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mMSimDataActivity ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v14

    invoke-static {v14, v15}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v7

    .line 2192
    .local v7, "dataSub":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v14, :cond_6

    .line 2193
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    const/16 v16, 0x0

    aput v16, v15, p1

    aput v16, v14, p1

    .line 2194
    const-string v11, ""

    .line 2195
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 2264
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-eqz v14, :cond_a

    .line 2265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    if-nez v14, :cond_9

    .line 2266
    const v14, 0x7f0d0285

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2269
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    .line 2295
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    aput v15, v14, p1

    .line 2296
    move-object v5, v13

    .line 2297
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    aput v15, v14, p1

    .line 2298
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    aput-object v15, v14, p1

    .line 2308
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    if-eqz v14, :cond_0

    .line 2309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v15, 0x7f0d01e7

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTetherIconId:I

    aput v15, v14, p1

    .line 2311
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v16, 0x7f0d0248

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, p1

    .line 2315
    const-string v14, "StatusBar.MSimNetworkController"

    const-string v15, "mBluetoothTethered:mDataTypeIconId is BT Tether Icon"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTetherIconId:I

    aput v15, v14, p1

    .line 2317
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const/4 v15, 0x0

    aput v15, v14, p1

    .line 2318
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const/4 v15, 0x0

    aput v15, v14, p1

    .line 2323
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    const/16 v15, 0x9

    if-ne v14, v15, :cond_c

    const/4 v8, 0x1

    .line 2325
    .local v8, "ethernetConnected":Z
    :goto_3
    if-eqz v8, :cond_1

    .line 2327
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 2330
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v14, v14, p1

    if-eqz v14, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v14

    if-nez v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v14, v14, p1

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v14

    if-nez v14, :cond_f

    .line 2336
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v16, 0x7f0d0249

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, p1

    .line 2338
    const v14, 0x7f020545

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneIconId:I

    .line 2339
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v17, v16, p1

    aput v17, v15, p1

    aput v17, v14, p1

    .line 2341
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    const/4 v15, 0x0

    aput v15, v14, p1

    .line 2342
    move/from16 v0, p1

    if-ne v0, v7, :cond_3

    .line 2343
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2344
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 2348
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-eqz v14, :cond_d

    .line 2350
    const-string v11, ""

    .line 2364
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const/4 v15, 0x0

    aput v15, v14, p1

    .line 2365
    move/from16 v0, p1

    if-ne v0, v7, :cond_4

    .line 2366
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2369
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2414
    :cond_5
    :goto_5
    const-string v15, "StatusBar.MSimNetworkController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refreshViews connected={"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-eqz v14, :cond_12

    const-string v14, " wifi"

    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v14, v14, p1

    if-eqz v14, :cond_13

    const-string v14, " data"

    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " } level="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v14, v14, p1

    if-nez v14, :cond_14

    const-string v14, "??"

    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMSimcombinedSignalIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMSimcombinedActivityIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mAirplaneMode="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMSimDataActivity="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMSimPhoneSignalIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMSimDataDirectionIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMSimDataSignalIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMSimDataTypeIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mNoMSimIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMSimMobileActivityIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mWifiIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mBluetoothTetherIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mRoamingIconId=0x "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 2450
    .local v3, "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_9

    .line 2221
    .end local v3    # "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    .end local v8    # "ethernetConnected":Z
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v14, v14, p1

    if-eqz v14, :cond_8

    .line 2222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2224
    move-object v5, v11

    .line 2225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2227
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2228
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v15, v15, p1

    aput-object v15, v14, p1

    .line 2231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aget v14, v14, p1

    packed-switch v14, :pswitch_data_0

    .line 2249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v14, v14, p1

    if-eqz v14, :cond_7

    .line 2250
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const v15, 0x7f020553

    aput v15, v14, p1

    goto/16 :goto_0

    .line 2233
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const v15, 0x7f02054f

    aput v15, v14, p1

    goto/16 :goto_0

    .line 2236
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const v15, 0x7f02055c

    aput v15, v14, p1

    goto/16 :goto_0

    .line 2239
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const v15, 0x7f020551

    aput v15, v14, p1

    goto/16 :goto_0

    .line 2252
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const/4 v15, 0x0

    aput v15, v14, p1

    goto/16 :goto_0

    .line 2258
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    const/4 v15, 0x0

    aput v15, v14, p1

    .line 2259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const/4 v15, 0x0

    aput v15, v14, p1

    .line 2260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    const/4 v15, 0x0

    aput v15, v14, p1

    goto/16 :goto_0

    .line 2272
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 2274
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "xxxxXXXXxxxxXXXX"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2278
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    packed-switch v14, :pswitch_data_1

    goto/16 :goto_1

    .line 2289
    :pswitch_3
    const v14, 0x7f020553

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2280
    :pswitch_4
    const v14, 0x7f02054f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2283
    :pswitch_5
    const v14, 0x7f02055c

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2286
    :pswitch_6
    const v14, 0x7f020551

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2300
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v14, :cond_b

    .line 2301
    const-string v13, ""

    goto/16 :goto_2

    .line 2303
    :cond_b
    const v14, 0x7f0d0284

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 2323
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 2352
    .restart local v8    # "ethernetConnected":Z
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v14, :cond_e

    .line 2354
    const-string v13, ""

    .line 2360
    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    aput-object v15, v14, p1

    .line 2362
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    goto/16 :goto_4

    .line 2356
    :cond_e
    const v14, 0x7f0d0284

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2358
    move-object v5, v13

    goto :goto_a

    .line 2371
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v14, v14, p1

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    if-nez v14, :cond_5

    if-nez v8, :cond_5

    .line 2381
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v14, v14, p1

    :goto_b
    aput v14, v15, p1

    .line 2383
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v14, v14, p1

    :goto_c
    aput-object v14, v15, p1

    .line 2387
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRoamingIcon(I)V

    goto/16 :goto_5

    .line 2381
    :cond_10
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    goto :goto_b

    .line 2383
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_c

    .line 2414
    :cond_12
    const-string v14, ""

    goto/16 :goto_6

    :cond_13
    const-string v14, ""

    goto/16 :goto_7

    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v14, v14, p1

    invoke-virtual {v14}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_8

    .line 2453
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v15, v15, p1

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWimaxIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v15, v15, p1

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMobileActivityIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    aget v15, v15, p1

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRoamingIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v15, v15, p1

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimDataServiceState:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v15, v15, p1

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiActivityIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastAirplaneMode:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v15, v15, p1

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataState:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v15, v15, p1

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimFocus:[Z

    aget-boolean v15, v15, p1

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastBluetoothTethered:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconVisible:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    if-ne v14, v15, :cond_2c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v15, v15, p1

    if-ne v14, v15, :cond_2c

    .line 2487
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastAirplaneMode:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eq v14, v15, :cond_17

    .line 2488
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastAirplaneMode:Z

    .line 2492
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_18

    .line 2493
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2497
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_19

    .line 2498
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2501
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_1a

    .line 2502
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2506
    :cond_1a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    if-eq v14, v15, :cond_1b

    .line 2507
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    .line 2511
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMobileActivityIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_1c

    .line 2512
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMobileActivityIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2515
    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRoamingIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_1d

    .line 2516
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRoamingIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2519
    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimDataServiceState:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_1e

    .line 2520
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimDataServiceState:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2523
    :cond_1e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiActivityIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    if-eq v14, v15, :cond_1f

    .line 2524
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiActivityIconId:I

    .line 2528
    :cond_1f
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWimaxIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    if-eq v14, v15, :cond_20

    .line 2529
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWimaxIconId:I

    .line 2532
    :cond_20
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_21

    .line 2534
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2538
    :cond_21
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    if-eq v14, v15, :cond_22

    .line 2539
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    .line 2542
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    if-eq v14, v15, :cond_23

    .line 2543
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    .line 2546
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    if-eq v14, v15, :cond_24

    .line 2547
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    .line 2550
    :cond_24
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataState:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    if-eq v14, v15, :cond_25

    .line 2551
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataState:I

    .line 2554
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastBluetoothTethered:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    if-eq v14, v15, :cond_26

    .line 2555
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastBluetoothTethered:Z

    .line 2560
    :cond_26
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_27

    .line 2561
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2564
    :cond_27
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    if-eq v14, v15, :cond_28

    .line 2565
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    .line 2568
    :cond_28
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimFocus:[Z

    aget-boolean v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v15, v15, p1

    if-eq v14, v15, :cond_29

    .line 2569
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimFocus:[Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v15, v15, p1

    aput-boolean v15, v14, p1

    .line 2572
    :cond_29
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_2a

    .line 2573
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2575
    :cond_2a
    sget-boolean v14, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v14, :cond_2b

    .line 2576
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_2b

    .line 2577
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2597
    :cond_2b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2d

    .line 2598
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    .line 2599
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2600
    .local v2, "N":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_d
    if-ge v9, v2, :cond_2d

    .line 2601
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2602
    .local v12, "v":Landroid/widget/TextView;
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2600
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 2481
    .end local v2    # "N":I
    .end local v9    # "i":I
    .end local v12    # "v":Landroid/widget/TextView;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;

    .line 2483
    .local v4, "cluster":Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    goto :goto_e

    .line 2607
    .end local v4    # "cluster":Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2608
    .restart local v2    # "N":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_f
    if-ge v9, v2, :cond_2f

    .line 2609
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2610
    .restart local v12    # "v":Landroid/widget/TextView;
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2611
    const-string v14, ""

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 2612
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2608
    :goto_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 2614
    :cond_2e
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_10

    .line 2619
    .end local v12    # "v":Landroid/widget/TextView;
    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCarrierText()V

    .line 2621
    sget-boolean v14, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v14, :cond_31

    .line 2622
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getMobileLabelForCHN()Ljava/lang/String;

    move-result-object v11

    .line 2642
    :goto_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2643
    const/4 v9, 0x0

    :goto_12
    if-ge v9, v2, :cond_36

    .line 2644
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2645
    .restart local v12    # "v":Landroid/widget/TextView;
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2646
    const-string v14, ""

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_30

    .line 2647
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2643
    :cond_30
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 2624
    .end local v12    # "v":Landroid/widget/TextView;
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v14, :cond_35

    .line 2625
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    sget-object v15, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v14, v15, :cond_32

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    sget-object v15, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v14, v15, :cond_32

    .line 2627
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v11, v14, v15

    goto :goto_11

    .line 2628
    :cond_32
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    sget-object v15, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v14, v15, :cond_33

    .line 2629
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v11, v14, v15

    goto :goto_11

    .line 2630
    :cond_33
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    sget-object v15, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v14, v15, :cond_34

    .line 2631
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v11, v14, v15

    goto :goto_11

    .line 2633
    :cond_34
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_11

    .line 2637
    :cond_35
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_11

    .line 2653
    :cond_36
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCarrierText()V

    .line 2654
    return-void

    .line 2231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2278
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x1e1

    const/4 v7, 0x0

    .line 403
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 407
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    .line 408
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    .line 409
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerPhoneStateListener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    new-array v4, v4, [Landroid/telephony/PhoneStateListener;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v4, :cond_3

    .line 412
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 413
    .local v1, "subIdtemp":[J
    if-eqz v1, :cond_0

    .line 414
    aget-wide v2, v1, v7

    .line 415
    .local v2, "subId":J
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerPhoneStateListener subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerPhoneStateListener slotId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 419
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v2, v3, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneStateListener(JI)Landroid/telephony/PhoneStateListener;

    move-result-object v5

    aput-object v5, v4, v0

    .line 422
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 411
    .end local v2    # "subId":J
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    .restart local v2    # "subId":J
    :cond_1
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    .line 430
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v2, v3, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneStateListener(JI)Landroid/telephony/PhoneStateListener;

    move-result-object v5

    aput-object v5, v4, v0

    .line 432
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    .line 439
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    goto :goto_1

    .line 445
    .end local v1    # "subIdtemp":[J
    .end local v2    # "subId":J
    :cond_3
    return-void
.end method

.method public setCurrentSimSlot(I)V
    .locals 0
    .param p1, "simSlot"    # I

    .prologue
    .line 3518
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    .line 3519
    return-void
.end method

.method protected updateConnectivity(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 2135
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConnectivity: intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2140
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2143
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnected:Z

    .line 2144
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnected:Z

    if-eqz v4, :cond_1

    .line 2145
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    .line 2146
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 2152
    :goto_1
    const-string v4, "inetCondition"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2155
    .local v1, "connectionStatus":I
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConnectivity: networkInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConnectivity: connectionStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v6, 0x7

    if-ne v4, v6, :cond_2

    .line 2164
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    .line 2170
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWimaxIcons()V

    .line 2171
    const/4 v3, 0x0

    .local v3, "sub":I
    :goto_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2173
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V

    .line 2174
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 2175
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 2171
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v1    # "connectionStatus":I
    .end local v3    # "sub":I
    :cond_0
    move v4, v5

    .line 2143
    goto :goto_0

    .line 2148
    :cond_1
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    .line 2149
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    .line 2166
    .restart local v1    # "connectionStatus":I
    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    goto :goto_2

    .line 2177
    .restart local v3    # "sub":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWifiIcons()V

    .line 2178
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V
    .locals 6
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "phoneId"    # I

    .prologue
    const/4 v5, 0x1

    .line 1917
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkName showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showPlmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1921
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1924
    .local v0, "something":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1925
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v5, :cond_0

    if-ne p3, v5, :cond_0

    .line 1926
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1927
    const/4 p1, 0x0

    .line 1932
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1933
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1934
    const/4 v0, 0x1

    .line 1936
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1937
    if-eqz v0, :cond_2

    .line 1938
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1940
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1941
    const/4 v0, 0x1

    .line 1943
    :cond_3
    if-eqz v0, :cond_4

    .line 1944
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p5

    .line 1949
    :goto_0
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMSimNetworkName[phoneId] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v4, v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    return-void

    .line 1946
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v3, v2, p5

    goto :goto_0
.end method

.method protected updateSimState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1026
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1029
    .local v3, "stateExtra":Ljava/lang/String;
    const-string v4, "slot"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1031
    .local v1, "phoneId":I
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState for phoneId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    if-ltz v1, :cond_1

    .line 1033
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1034
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1057
    .local v2, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v4, v4, v1

    if-eq v2, v4, :cond_0

    .line 1058
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v4, v1

    .line 1059
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 1060
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState simState ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 1064
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 1065
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimIcon(I)V

    .line 1067
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    return-void

    .line 1036
    :cond_2
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "IMSI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "LOADED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1039
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1041
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1042
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, "lockedReason":Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1045
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1047
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    const-string v4, "PUK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1048
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1051
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1054
    .end local v0    # "lockedReason":Ljava/lang/String;
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0
.end method
