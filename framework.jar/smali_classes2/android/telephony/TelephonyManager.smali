.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$1;,
        Landroid/telephony/TelephonyManager$MultiSimVariants;,
        Landroid/telephony/TelephonyManager$WifiCallingChoices;
    }
.end annotation


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_PRECISE_CALL_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PRECISE_CALL_STATE"

.field public static final ACTION_PRECISE_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final CAPABLE_TYPE_DOWNLOADBOOSTER:I = 0x1

.field public static final CARRIER_PRIVILEGE_STATUS_ERROR_LOADING_RULES:I = -0x2

.field public static final CARRIER_PRIVILEGE_STATUS_HAS_ACCESS:I = 0x1

.field public static final CARRIER_PRIVILEGE_STATUS_NO_ACCESS:I = 0x0

.field public static final CARRIER_PRIVILEGE_STATUS_RULES_NOT_LOADED:I = -0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field private static final DBG:Z

.field public static final DM_CMD_EVENT_SET:I = 0x2

.field public static final DM_CMD_HDV_ALARM_EVENT:I = 0x7

.field public static final DM_CMD_LOG_SET:I = 0x1

.field public static final DM_CMD_MEM_CHECK:I = 0x5

.field public static final DM_CMD_MEM_SET:I = 0x4

.field public static final DM_CMD_SAVE_LOG:I = 0x6

.field public static final DM_CMD_STATE_CHANGE_SET:I = 0x3

.field private static final DOD_SKT_APP_SIGNATURE:Ljava/lang/String; = "3082019b30820104a00302010202044c6b473a300d06092a864886f70d010105050030123110300e06035504031307616e64726f6964301e170d3130303831383032333634325a170d3430303831303032333634325a30123110300e06035504031307616e64726f696430819f300d06092a864886f70d010101050003818d00308189028181008e22b5c794e4621f5acf64431605f6f03301e8af027353d1952f3cd6acb5ce50a02bbc85822bf21ee5ee84410ed5c847233de58790d3309799e6e3e91eff8cb8db56ae7b64f691e3a522f78ec869b093720236152410bce1242bbe567fa9c2e1e4efdeb8feabe027d264501fe0ea65777b49b0bed6b806bd888c195394fd2a230203010001300d06092a864886f70d010105050003818100760b171ab6383e2b4170136ebb253e8226d2af2d31c3196c4914c92cea6e91072827b581a639a427fd4302842c5e2be9418d5226745d6ed6cef06904505c7a6ef51897368251a46fc9aae61fc4778ccb85432c801d64cd818f436e686753cccd4aa76e3bcfe3355a73c4bc1e5b239e453fc739b52959cd7de0e617e4072017b0"

.field private static final DOD_SKT_APP_SIGNATURE2:Ljava/lang/String; = "3082033b30820223a00302010202046949927c300d06092a864886f70d01010b0500304d310b3009060355040613024b52310e300c0603550407130553656f756c31123010060355040a1309736b74656c65636f6d311a3018060355040b1311536d61727420446576696365204c61622e3020170d3133303731373034303731315a180f32313133303632333034303731315a304d310b3009060355040613024b52310e300c0603550407130553656f756c31123010060355040a1309736b74656c65636f6d311a3018060355040b1311536d61727420446576696365204c61622e30820122300d06092a864886f70d01010105000382010f003082010a02820101009054ef68216a1db045aa95d5b71120701ae32b55f692ba4a033e4fd8531d7614ce0a8dc058cf2d11857f68138a3579f5f81eb7fcf6abc721e215868fd2866fae01f69967340267497410520a2cfffca58585cad43dfc5ece54de5c253a2d1e7391a09abeaca1cd2e2db7fb4d045f43ab1c4df0621b1e914322d2f1743d465021d540715b1ea7dafb9d3f25b77812f5998ad3a6befa48bb3ef46acfc50b8f093e2c42611ce1084221a28c6a26c96cb2a78c779e2edc41f859b8638b5c060ec608d92564e1ee355b6cf400888c7bd3fc6b3bd38bf4512d23153cb90a9c1b3c7c221cd15ffbd84abea143f4665bdab5fb969d1332e29499b487810c3324cf1927b10203010001a321301f301d0603551d0e041604149f6ccd79ff1fc86191fd86973cbe8ad3498752a6300d06092a864886f70d01010b05000382010100465ded5885849010ba16c05af54a55a4783db87fe46d3a2411866ca9819f7e734132c513ba370bec8bc657f5b507e8a6632e3cdcdd750b04c059f3e8ef999cd35c8ebc467351e7f16093672c267f4688640f0700d8bbf6f3340aeb447714267e8a4adb91773df43975e62b5ad24065719f3aec825b955442db1b88d6bde48ebed00431915f23991b58c1b24e7033f26f752ddd0c3a16dd4c5a2764055d5e09ae839e2c21404fdd5e90163f4e06305755700f883f11fd50a3277775b76373f6acac68a94faf3a29a798cfc8e869e786d5790e363adbd87037de537ffb2870591e3b5672bf7adaa0c86491041878d8277296fcf6089b5e8b1188c64d0d0bbd6db7"

.field public static final EXTRA_BACKGROUND_CALL_STATE:Ljava/lang/String; = "background_state"

.field public static final EXTRA_DATA_APN:Ljava/lang/String; = "apn"

.field public static final EXTRA_DATA_APN_TYPE:Ljava/lang/String; = "apnType"

.field public static final EXTRA_DATA_CHANGE_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_DATA_FAILURE_CAUSE:Ljava/lang/String; = "failCause"

.field public static final EXTRA_DATA_LINK_PROPERTIES_KEY:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_DATA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_DATA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_DISCONNECT_CAUSE:Ljava/lang/String; = "disconnect_cause"

.field public static final EXTRA_FOREGROUND_CALL_STATE:Ljava/lang/String; = "foreground_state"

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_PRECISE_DISCONNECT_CAUSE:Ljava/lang/String; = "precise_disconnect_cause"

.field public static final EXTRA_RINGING_CALL_STATE:Ljava/lang/String; = "ringing_state"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field public static final EXTRA_VOIP_CALLSTATE:Ljava/lang/String; = "is_voip_callstate"

.field private static final KNIGHT_LOG_FILE_NAME:Ljava/lang/String; = "/data/log/knightBuff.tmp"

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_DC:I = 0x1e

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_IWLAN:I = 0x12

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_TDLTE:I = 0x1f

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field private static final PREFIX_TABLE:[Ljava/lang/String;

.field private static final SHIP_BUILD:Z

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x6

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static final TAG_DM_LOGGING:Ljava/lang/String; = "DmLoggingService"

.field private static final UKNIGHT_LGT_APP_SIGNATURE:Ljava/lang/String; = "3082019d30820106a00302010202044f3193c6300d06092a864886f70d010105050030133111300f060355040a0c084c475f55706c7573301e170d3132303230373231313233385a170d3432303133303231313233385a30133111300f060355040a0c084c475f55706c757330819f300d06092a864886f70d010101050003818d0030818902818100872b7051b6c30272b6c200b809a90a4f7fa148bdb554a4b29df536018f256c624c6781006655a30eef98152781353b48da3aa739d8e0bdc2fcee10789438454bce9dcf081a3a8757ecb6f2985bcdec0b83e7ed46dc35ac36e3820442740b0b6c6e05ac17d49502708070e1137914eb26d2e63c9235efbb6d930a353c004228490203010001300d06092a864886f70d0101050500038181004157e820571e50c367497ab98c05375a7d8e40ea67ff3df8858226322faf91e5c12521266402ce9d2e946d25b0833cc7c4b39a2b28cae46e184b16f973a885fd2f607decafcb814ad326739a35d3703c140ac5bdbb18f1598f997e1ae52fcefeee88f3419db99379e63caa981a632d41a23549a0a03e843bf285ad6cdbcaa6f4"

.field private static final UKNIGHT_PACKAGE_NAME:Ljava/lang/String; = "com.lguplus.uknight2"

.field private static final UKNIGHT_TOKEN:I = 0x177c

.field public static final VOIPCALL_STATE_IDLE:I = 0x3

.field public static final VOIPCALL_STATE_OFFHOOK:I = 0x5

.field public static final VOIPCALL_STATE_RINGING:I = 0x4

.field public static isCDMAMessage:Z = false

.field public static isSelecttelecomDF:Z = false

.field private static final mDmLoggingPidFile:Ljava/lang/String; = "/data/log/dmlog_pid"

.field public static mImsLineNumber:Ljava/lang/String;

.field private static multiSimConfig:Ljava/lang/String;

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field private static final sKernelCmdLine:Ljava/lang/String;

.field private static final sLteOnCdmaProductType:Ljava/lang/String;

.field private static final sProductTypePattern:Ljava/util/regex/Pattern;

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/telephony/TelephonyManager;->DBG:Z

    .line 87
    const-string/jumbo v0, "true"

    const-string/jumbo v3, "ro.product_ship"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/TelephonyManager;->SHIP_BUILD:Z

    .line 111
    const-string/jumbo v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    .line 129
    sput-boolean v2, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    .line 131
    sput-boolean v2, Landroid/telephony/TelephonyManager;->isCDMAMessage:Z

    .line 135
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/TelephonyManager;->mImsLineNumber:Ljava/lang/String;

    .line 157
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 327
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 333
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 339
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 1017
    invoke-static {}, Landroid/telephony/TelephonyManager;->getProcCmdLine()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    .line 1020
    const-string v0, "\\sproduct_type\\s*=\\s*(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    .line 1024
    const-string/jumbo v0, "telephony.lteOnCdmaProductType"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    .line 4248
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "010"

    aput-object v3, v0, v2

    const-string v2, "SKT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "KTF"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "STI"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HSP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LGT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/TelephonyManager;->PREFIX_TABLE:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 86
    goto/16 :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 141
    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 146
    :goto_0
    sget-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v1, :cond_0

    .line 147
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 150
    :cond_0
    return-void

    .line 143
    :cond_1
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private ByteToInt([B)I
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 4805
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static appendId(Ljava/lang/String;J)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "id"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 3919
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 3935
    .end local p0    # "text":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 3923
    .restart local p0    # "text":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3925
    .local v1, "str":Ljava/lang/StringBuilder;
    cmp-long v2, p1, v4

    if-ltz v2, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    .line 3926
    cmp-long v2, p1, v4

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3935
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3928
    :cond_2
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Id is error (text : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3930
    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "appendId() exception"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3931
    :catch_0
    move-exception v0

    .line 3932
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static getDefaultSubscription()J
    .locals 2

    .prologue
    .line 2973
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFirst()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 2379
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3051
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3052
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3053
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3054
    .local v1, "valArray":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v2, v1

    if-ge p2, v2, :cond_0

    aget-object v2, v1, p2

    if-eqz v2, :cond_0

    .line 3056
    :try_start_0
    aget-object v2, v1, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3057
    :catch_0
    move-exception v2

    .line 3062
    .end local v1    # "valArray":[Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLteOnCdmaModeStatic()I
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 1040
    const-string v2, ""

    .line 1042
    .local v2, "productType":Ljava/lang/String;
    const-string/jumbo v4, "telephony.lteOnCdmaDevice"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1044
    .local v0, "curVal":I
    move v3, v0

    .line 1045
    .local v3, "retVal":I
    if-ne v3, v5, :cond_0

    .line 1046
    sget-object v4, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    sget-object v5, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1047
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1048
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1049
    sget-object v4, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1050
    const/4 v3, 0x1

    .line 1059
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    const-string v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLteOnCdmaMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " curVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " product_type=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' lteOnCdmaProductType=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    return v3

    .line 1052
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1055
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getNetworkClass(I)I
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 1427
    packed-switch p0, :pswitch_data_0

    .line 1454
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1434
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1447
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1452
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1427
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 1478
    packed-switch p0, :pswitch_data_0

    .line 1528
    :pswitch_0
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1480
    :pswitch_1
    const-string v0, "GPRS"

    goto :goto_0

    .line 1482
    :pswitch_2
    const-string v0, "EDGE"

    goto :goto_0

    .line 1484
    :pswitch_3
    const-string v0, "UMTS"

    goto :goto_0

    .line 1486
    :pswitch_4
    const-string v0, "HSDPA"

    goto :goto_0

    .line 1488
    :pswitch_5
    const-string v0, "HSUPA"

    goto :goto_0

    .line 1490
    :pswitch_6
    const-string v0, "HSPA"

    goto :goto_0

    .line 1492
    :pswitch_7
    const-string v0, "CDMA"

    goto :goto_0

    .line 1494
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 1496
    :pswitch_9
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 1498
    :pswitch_a
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 1500
    :pswitch_b
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 1502
    :pswitch_c
    const-string v0, "KDI"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1503
    const-string v0, "4G"

    goto :goto_0

    .line 1504
    :cond_0
    const-string v0, "SBM"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1505
    const-string v0, "4G"

    goto :goto_0

    .line 1507
    :cond_1
    const-string v0, "LTE"

    goto :goto_0

    .line 1510
    :pswitch_d
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 1512
    :pswitch_e
    const-string v0, "iDEN"

    goto :goto_0

    .line 1514
    :pswitch_f
    const-string v0, "HSPA+"

    goto :goto_0

    .line 1516
    :pswitch_10
    const-string v0, "GSM"

    goto :goto_0

    .line 1519
    :pswitch_11
    const-string v0, "TD_SCDMA"

    goto :goto_0

    .line 1523
    :pswitch_12
    const-string v0, "IWLAN"

    goto :goto_0

    .line 1525
    :pswitch_13
    const-string v0, "DC"

    goto :goto_0

    .line 1478
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_e
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method

.method public static getPhoneType(I)I
    .locals 3
    .param p0, "networkMode"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 943
    packed-switch p0, :pswitch_data_0

    move v0, v1

    .line 984
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 966
    goto :goto_0

    .line 978
    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 981
    goto :goto_0

    .line 943
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 2

    .prologue
    .line 911
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType(J)I

    move-result v0

    return v0
.end method

.method private getPhoneTypeFromNetworkType(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 919
    const-string/jumbo v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, "mode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 921
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    .line 923
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty()I
    .locals 2

    .prologue
    .line 895
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(J)I

    move-result v0

    return v0
.end method

.method private getPhoneTypeFromProperty(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 900
    const-string v1, "gsm.current.phone-type"

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 904
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 906
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType(J)I

    move-result v1

    goto :goto_0
.end method

.method private static getProcCmdLine()Ljava/lang/String;
    .locals 10

    .prologue
    .line 993
    const-string v1, ""

    .line 994
    .local v1, "cmdline":Ljava/lang/String;
    const/4 v5, 0x0

    .line 996
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/cmdline"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v6, "is":Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_1
    new-array v0, v7, [B

    .line 998
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 999
    .local v3, "count":I
    if-lez v3, :cond_0

    .line 1000
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "cmdline":Ljava/lang/String;
    .local v2, "cmdline":Ljava/lang/String;
    move-object v1, v2

    .line 1005
    .end local v2    # "cmdline":Ljava/lang/String;
    .restart local v1    # "cmdline":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_3

    .line 1007
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 1012
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/cmdline="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    return-object v1

    .line 1008
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    move-object v5, v6

    .line 1009
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_0

    .line 1002
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    :catch_1
    move-exception v4

    .line 1003
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No /proc/cmdline exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1005
    if-eqz v5, :cond_1

    .line 1007
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1008
    :catch_2
    move-exception v7

    goto :goto_0

    .line 1005
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v5, :cond_2

    .line 1007
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1009
    :cond_2
    :goto_3
    throw v7

    .line 1008
    :catch_3
    move-exception v8

    goto :goto_3

    .line 1005
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1002
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :cond_3
    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private static getRoamingUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "ua"    # Ljava/lang/String;
    .param p1, "mdn"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 4253
    const-string/jumbo v0, "ril.currentplmn"

    const-string v1, "domestic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oversea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4262
    :goto_0
    return-object p0

    .line 4257
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 4258
    const-string v0, "I%c%c%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4260
    :cond_1
    const-string v0, "I%c%c%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getSecondary()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getServiceUserAgent()C
    .locals 3

    .prologue
    .line 4276
    const/16 v0, 0x30

    .line 4278
    .local v0, "cNetworkType":C
    invoke-static {}, Landroid/telephony/TelephonyManager;->isWIFIConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4279
    const/16 v0, 0x44

    .line 4311
    :goto_0
    return v0

    .line 4281
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 4283
    .local v1, "nNetworkType":I
    packed-switch v1, :pswitch_data_0

    .line 4308
    :pswitch_0
    const/16 v0, 0x36

    goto :goto_0

    .line 4285
    :pswitch_1
    const/16 v0, 0x42

    .line 4286
    goto :goto_0

    .line 4288
    :pswitch_2
    const/16 v0, 0x43

    .line 4289
    goto :goto_0

    .line 4291
    :pswitch_3
    const/16 v0, 0x38

    .line 4292
    goto :goto_0

    .line 4294
    :pswitch_4
    const/16 v0, 0x39

    .line 4295
    goto :goto_0

    .line 4302
    :pswitch_5
    const/16 v0, 0x36

    .line 4303
    goto :goto_0

    .line 4305
    :pswitch_6
    const/16 v0, 0x46

    .line 4306
    goto :goto_0

    .line 4283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getSktImsiM()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4323
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSktImsiM()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 4328
    :goto_0
    return-object v1

    .line 4324
    :catch_0
    move-exception v0

    .line 4325
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 4326
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4328
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method private getSktIrm()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4341
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSktIrm()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 4346
    :goto_0
    return-object v1

    .line 4342
    :catch_0
    move-exception v0

    .line 4343
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 4344
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4346
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 2219
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method private getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .locals 1

    .prologue
    .line 2383
    const-string/jumbo v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "subId"    # J
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 3116
    const/4 v2, 0x0

    .line 3117
    .local v2, "propVal":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 3118
    .local v0, "phoneId":I
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3119
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 3120
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3121
    .local v3, "values":[Ljava/lang/String;
    if-ltz v0, :cond_0

    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3123
    aget-object v2, v3, v0

    .line 3126
    .end local v3    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    .end local p3    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p3

    .restart local p3    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p3, v2

    goto :goto_0
.end method

.method public static getUAField()Ljava/lang/String;
    .locals 31

    .prologue
    .line 4355
    const/16 v22, 0x0

    .line 4356
    .local v22, "numPrefix":Ljava/lang/String;
    const-string v3, ""

    .line 4357
    .local v3, "UserAgent":Ljava/lang/String;
    const-string v13, ""

    .line 4358
    .local v13, "min8":Ljava/lang/String;
    const-string v12, ""

    .line 4359
    .local v12, "mdn":Ljava/lang/String;
    const/16 v26, 0x0

    .line 4361
    .local v26, "sbDeviceInfo":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 4362
    .local v8, "fileReader":Ljava/io/FileReader;
    const/16 v23, 0x0

    .line 4365
    .local v23, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v16, Ljava/io/File;

    const-string v28, "/system/skt/ua/uafield.dat"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4366
    .local v16, "myFile":Ljava/io/File;
    new-instance v9, Ljava/io/FileReader;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4367
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .local v9, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v24, Ljava/io/BufferedReader;

    move-object/from16 v0, v24

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4368
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .local v24, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v27, Ljava/lang/StringBuffer;

    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4369
    .end local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .local v27, "sbDeviceInfo":Ljava/lang/StringBuffer;
    :try_start_3
    const-string v28, "TelephonyManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "ua -"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4370
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 4375
    :try_start_4
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V

    .line 4376
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 4381
    :goto_0
    if-nez v27, :cond_1

    .line 4382
    const/16 v28, 0x0

    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    move-object/from16 v26, v27

    .line 4445
    .end local v16    # "myFile":Ljava/io/File;
    .end local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :goto_1
    return-object v28

    .line 4377
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .end local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "myFile":Ljava/io/File;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v7

    .line 4378
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4371
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .end local v16    # "myFile":Ljava/io/File;
    .end local v24    # "reader":Ljava/io/BufferedReader;
    .end local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v6

    .line 4372
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4375
    :try_start_6
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V

    .line 4376
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 4381
    :goto_3
    if-nez v26, :cond_2

    .line 4382
    const/16 v28, 0x0

    goto :goto_1

    .line 4377
    :catch_2
    move-exception v7

    .line 4378
    .restart local v7    # "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 4374
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v28

    .line 4375
    :goto_4
    :try_start_7
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V

    .line 4376
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 4381
    :goto_5
    if-nez v26, :cond_0

    .line 4382
    const/16 v28, 0x0

    goto :goto_1

    .line 4377
    :catch_3
    move-exception v7

    .line 4378
    .restart local v7    # "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 4382
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_0
    throw v28

    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .end local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "myFile":Ljava/io/File;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :cond_1
    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    move-object/from16 v26, v27

    .line 4386
    .end local v16    # "myFile":Ljava/io/File;
    .end local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :cond_2
    const-string v28, "oversea"

    const-string/jumbo v29, "ril.currentplmn"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 4387
    .local v10, "is_roaming":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getServiceUserAgent()C

    move-result v19

    .line 4389
    .local v19, "networkType":C
    const/16 v28, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 4391
    const-string v28, "gsm.operator.numeric"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4392
    .local v18, "networkOperator":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 4393
    .local v4, "cell":Landroid/telephony/gsm/GsmCellLocation;
    if-nez v4, :cond_3

    .line 4394
    const-string v28, "TelephonyManager"

    const-string v29, "No Sim or Flight mode"

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4395
    const/16 v28, 0x0

    goto :goto_1

    .line 4398
    :cond_3
    :try_start_8
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    .line 4399
    .local v5, "cid":I
    const v28, 0xff00

    and-int v28, v28, v5

    shr-int/lit8 v28, v28, 0x8

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 4400
    .local v20, "nodeB":B
    shr-int/lit8 v28, v5, 0x10

    and-int/lit8 v28, v28, 0x1f

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v25, v0

    .line 4401
    .local v25, "rnc":B
    shr-int/lit8 v28, v5, 0x15

    and-int/lit8 v28, v28, 0x7f

    move/from16 v0, v28

    int-to-byte v15, v0

    .line 4403
    .local v15, "msd":B
    if-nez v10, :cond_5

    .line 4404
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-direct/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getSktImsiM()Ljava/lang/String;

    move-result-object v12

    .line 4409
    :goto_6
    sget-object v28, Landroid/telephony/TelephonyManager;->PREFIX_TABLE:[Ljava/lang/String;

    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v29

    add-int/lit8 v29, v29, -0x30

    aget-object v22, v28, v29

    .line 4411
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0xb

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 4412
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 4422
    :goto_7
    const/16 v28, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 4423
    .local v14, "mnc":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4424
    .local v11, "mcc":Ljava/lang/String;
    const/16 v17, 0x0

    .line 4426
    .local v17, "networkInfo":Ljava/lang/String;
    const/16 v28, 0x46

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 4427
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ";ECI;"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 4432
    :goto_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4434
    if-eqz v22, :cond_4

    .line 4435
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4437
    :cond_4
    invoke-static {v3, v12}, Landroid/telephony/TelephonyManager;->getRoamingUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4438
    const-string v28, "TelephonyManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "getUAField():"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v28, v3

    .line 4445
    goto/16 :goto_1

    .line 4406
    .end local v11    # "mcc":Ljava/lang/String;
    .end local v14    # "mnc":Ljava/lang/String;
    .end local v17    # "networkInfo":Ljava/lang/String;
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-direct/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getSktIrm()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_6

    .line 4413
    :cond_6
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0xa

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 4414
    if-nez v10, :cond_7

    .line 4415
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7

    .line 4417
    :cond_7
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7

    .line 4419
    :cond_8
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7

    .line 4429
    .restart local v11    # "mcc":Ljava/lang/String;
    .restart local v14    # "mnc":Ljava/lang/String;
    .restart local v17    # "networkInfo":Ljava/lang/String;
    :cond_9
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v29, v20, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    rem-int/lit8 v29, v20, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 4430
    .local v21, "nodeBStr":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v17

    goto/16 :goto_8

    .line 4439
    .end local v5    # "cid":I
    .end local v11    # "mcc":Ljava/lang/String;
    .end local v14    # "mnc":Ljava/lang/String;
    .end local v15    # "msd":B
    .end local v17    # "networkInfo":Ljava/lang/String;
    .end local v20    # "nodeB":B
    .end local v21    # "nodeBStr":Ljava/lang/String;
    .end local v25    # "rnc":B
    :catch_4
    move-exception v6

    .line 4440
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v28, "TelephonyManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "No Sim or No MSISDN -"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4442
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 4374
    .end local v4    # "cell":Landroid/telephony/gsm/GsmCellLocation;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v10    # "is_roaming":Z
    .end local v18    # "networkOperator":Ljava/lang/String;
    .end local v19    # "networkType":C
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "myFile":Ljava/io/File;
    :catchall_1
    move-exception v28

    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_4

    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v28

    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_4

    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .end local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :catchall_3
    move-exception v28

    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    move-object/from16 v26, v27

    .end local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    goto/16 :goto_4

    .line 4371
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    :catch_5
    move-exception v6

    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .end local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :catch_7
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    move-object/from16 v26, v27

    .end local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    goto/16 :goto_2
.end method

.method private intToByteArray(I)[B
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x4

    .line 4797
    new-array v0, v4, [B

    .line 4798
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 4799
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    mul-int/lit8 v2, v3, 0x8

    .line 4800
    .local v2, "offset":I
    ushr-int v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 4798
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4802
    .end local v2    # "offset":I
    :cond_0
    return-object v0
.end method

.method private isDmLoggingPID()Z
    .locals 3

    .prologue
    .line 4748
    const/4 v1, 0x0

    .line 4750
    .local v1, "is_DiagPID":Z
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/log/dmlog_pid"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4751
    .local v0, "SLogConfigFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 4752
    :cond_0
    return v1
.end method

.method public static isSelectTelecomDF()Z
    .locals 1

    .prologue
    .line 4243
    sget-boolean v0, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    return v0
.end method

.method private static isWIFIConnected()Z
    .locals 2

    .prologue
    .line 4266
    const-string v1, "gsm.wifiConnected.active"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4268
    .local v0, "wifiConnected":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4269
    const/4 v1, 0x1

    .line 4271
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .prologue
    .line 3082
    const-string v0, ""

    .line 3083
    .local v0, "data":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3084
    .local v4, "valArray":[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3086
    .local v3, "v":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3087
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3091
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 3092
    const-string v2, ""

    .line 3093
    .local v2, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 3094
    aget-object v2, v4, v1

    .line 3096
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3091
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3099
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3102
    if-eqz v4, :cond_3

    .line 3103
    add-int/lit8 v1, p2, 0x1

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 3104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3107
    :cond_3
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method public static setTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)V
    .locals 9
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "subId"    # J
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 2988
    const-string v4, ""

    .line 2989
    .local v4, "propVal":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2990
    .local v1, "p":[Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2991
    .local v3, "prop":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v2

    .line 2993
    .local v2, "phoneId":I
    if-nez p3, :cond_0

    .line 2994
    const-string p3, ""

    .line 2997
    :cond_0
    if-eqz v3, :cond_1

    .line 2998
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3001
    :cond_1
    if-gez v2, :cond_2

    .line 3026
    :goto_0
    return-void

    .line 3003
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 3004
    const-string v5, ""

    .line 3005
    .local v5, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v6, v1

    if-ge v0, v6, :cond_3

    .line 3006
    aget-object v5, v1, v0

    .line 3008
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3003
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3011
    .end local v5    # "str":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3012
    if-eqz v1, :cond_5

    .line 3013
    add-int/lit8 v0, v2, 0x1

    :goto_2
    array-length v6, v1

    if-ge v0, v6, :cond_5

    .line 3014
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3013
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3019
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x1f

    if-gt v6, v7, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x5b

    if-le v6, v7, :cond_7

    .line 3020
    :cond_6
    const-string v6, "TelephonyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setTelephonyProperty length too long:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3024
    :cond_7
    const-string v6, "TelephonyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setTelephonyProperty property="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " propVal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    invoke-static {p0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4758
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v8, p2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 4766
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_6

    aget-object v5, v0, v2

    .line 4767
    .local v5, "signature":Landroid/content/pm/Signature;
    const-string v8, "SKT"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4768
    sget-boolean v8, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v8, :cond_0

    .line 4769
    const-string v8, "DmLoggingService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4770
    const-string v8, "DmLoggingService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4773
    :cond_0
    const-string v8, "3082019b30820104a00302010202044c6b473a300d06092a864886f70d010105050030123110300e06035504031307616e64726f6964301e170d3130303831383032333634325a170d3430303831303032333634325a30123110300e06035504031307616e64726f696430819f300d06092a864886f70d010101050003818d00308189028181008e22b5c794e4621f5acf64431605f6f03301e8af027353d1952f3cd6acb5ce50a02bbc85822bf21ee5ee84410ed5c847233de58790d3309799e6e3e91eff8cb8db56ae7b64f691e3a522f78ec869b093720236152410bce1242bbe567fa9c2e1e4efdeb8feabe027d264501fe0ea65777b49b0bed6b806bd888c195394fd2a230203010001300d06092a864886f70d010105050003818100760b171ab6383e2b4170136ebb253e8226d2af2d31c3196c4914c92cea6e91072827b581a639a427fd4302842c5e2be9418d5226745d6ed6cef06904505c7a6ef51897368251a46fc9aae61fc4778ccb85432c801d64cd818f436e686753cccd4aa76e3bcfe3355a73c4bc1e5b239e453fc739b52959cd7de0e617e4072017b0"

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "3082033b30820223a00302010202046949927c300d06092a864886f70d01010b0500304d310b3009060355040613024b52310e300c0603550407130553656f756c31123010060355040a1309736b74656c65636f6d311a3018060355040b1311536d61727420446576696365204c61622e3020170d3133303731373034303731315a180f32313133303632333034303731315a304d310b3009060355040613024b52310e300c0603550407130553656f756c31123010060355040a1309736b74656c65636f6d311a3018060355040b1311536d61727420446576696365204c61622e30820122300d06092a864886f70d01010105000382010f003082010a02820101009054ef68216a1db045aa95d5b71120701ae32b55f692ba4a033e4fd8531d7614ce0a8dc058cf2d11857f68138a3579f5f81eb7fcf6abc721e215868fd2866fae01f69967340267497410520a2cfffca58585cad43dfc5ece54de5c253a2d1e7391a09abeaca1cd2e2db7fb4d045f43ab1c4df0621b1e914322d2f1743d465021d540715b1ea7dafb9d3f25b77812f5998ad3a6befa48bb3ef46acfc50b8f093e2c42611ce1084221a28c6a26c96cb2a78c779e2edc41f859b8638b5c060ec608d92564e1ee355b6cf400888c7bd3fc6b3bd38bf4512d23153cb90a9c1b3c7c221cd15ffbd84abea143f4665bdab5fb969d1332e29499b487810c3324cf1927b10203010001a321301f301d0603551d0e041604149f6ccd79ff1fc86191fd86973cbe8ad3498752a6300d06092a864886f70d01010b05000382010100465ded5885849010ba16c05af54a55a4783db87fe46d3a2411866ca9819f7e734132c513ba370bec8bc657f5b507e8a6632e3cdcdd750b04c059f3e8ef999cd35c8ebc467351e7f16093672c267f4688640f0700d8bbf6f3340aeb447714267e8a4adb91773df43975e62b5ad24065719f3aec825b955442db1b88d6bde48ebed00431915f23991b58c1b24e7033f26f752ddd0c3a16dd4c5a2764055d5e09ae839e2c21404fdd5e90163f4e06305755700f883f11fd50a3277775b76373f6acac68a94faf3a29a798cfc8e869e786d5790e363adbd87037de537ffb2870591e3b5672bf7adaa0c86491041878d8277296fcf6089b5e8b1188c64d0d0bbd6db7"

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4775
    :cond_1
    sget-boolean v7, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v7, :cond_2

    .line 4776
    const-string v7, "DmLoggingService"

    const-string/jumbo v8, "validateAppSignatureForPackage(), - DOD SIGNATURE !!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4793
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "signature":Landroid/content/pm/Signature;
    :cond_2
    :goto_1
    return v6

    .line 4759
    :catch_0
    move-exception v1

    .line 4760
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v6, :cond_3

    .line 4761
    const-string v6, "DmLoggingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "validateAppSignatureForPackage(), exception - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v6, v7

    .line 4763
    goto :goto_1

    .line 4781
    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "signature":Landroid/content/pm/Signature;
    :cond_4
    const-string v8, "3082019d30820106a00302010202044f3193c6300d06092a864886f70d010105050030133111300f060355040a0c084c475f55706c7573301e170d3132303230373231313233385a170d3432303133303231313233385a30133111300f060355040a0c084c475f55706c757330819f300d06092a864886f70d010101050003818d0030818902818100872b7051b6c30272b6c200b809a90a4f7fa148bdb554a4b29df536018f256c624c6781006655a30eef98152781353b48da3aa739d8e0bdc2fcee10789438454bce9dcf081a3a8757ecb6f2985bcdec0b83e7ed46dc35ac36e3820442740b0b6c6e05ac17d49502708070e1137914eb26d2e63c9235efbb6d930a353c004228490203010001300d06092a864886f70d0101050500038181004157e820571e50c367497ab98c05375a7d8e40ea67ff3df8858226322faf91e5c12521266402ce9d2e946d25b0833cc7c4b39a2b28cae46e184b16f973a885fd2f607decafcb814ad326739a35d3703c140ac5bdbb18f1598f997e1ae52fcefeee88f3419db99379e63caa981a632d41a23549a0a03e843bf285ad6cdbcaa6f4"

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4782
    sget-boolean v7, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v7, :cond_2

    .line 4783
    const-string v7, "DmLoggingService"

    const-string/jumbo v8, "validateAppSignatureForPackage(), -KNIGHT SIGNATURE !!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4766
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 4790
    .end local v5    # "signature":Landroid/content/pm/Signature;
    :cond_6
    sget-boolean v6, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v6, :cond_7

    .line 4791
    const-string v6, "DmLoggingService"

    const-string/jumbo v8, "validateAppSignatureForPackage(), - Not SIGNATURE ."

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v6, v7

    .line 4793
    goto :goto_1
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 3

    .prologue
    .line 3527
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3531
    :goto_0
    return-void

    .line 3528
    :catch_0
    move-exception v0

    .line 3529
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#answerRingingCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public answerRingingCall(J)V
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 3538
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->answerRingingCallForSubscriber(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3542
    :goto_0
    return-void

    .line 3539
    :catch_0
    move-exception v0

    .line 3540
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#answerRingingCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public call(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;

    .prologue
    .line 3492
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephony;->callForSubscriber(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3496
    :goto_0
    return-void

    .line 3493
    :catch_0
    move-exception v0

    .line 3494
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 3481
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3485
    :goto_0
    return-void

    .line 3482
    :catch_0
    move-exception v0

    .line 3483
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 3433
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3439
    :goto_0
    return v1

    .line 3434
    :catch_0
    move-exception v0

    .line 3435
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "hasCarrierPrivileges RemoteException"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3439
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3436
    :catch_1
    move-exception v0

    .line 3437
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManager"

    const-string v2, "hasCarrierPrivileges NPE"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public dial(JLjava/lang/String;)V
    .locals 3
    .param p1, "subId"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 3470
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->dialForSubscriber(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3474
    :goto_0
    return-void

    .line 3471
    :catch_0
    move-exception v0

    .line 3472
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#dial"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 3459
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3463
    :goto_0
    return-void

    .line 3460
    :catch_0
    move-exception v0

    .line 3461
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#dial"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableDataConnectivity()Z
    .locals 3

    .prologue
    .line 3864
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3868
    :goto_0
    return v1

    .line 3865
    :catch_0
    move-exception v0

    .line 3866
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#disableDataConnectivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3868
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableLocationUpdates()V
    .locals 2

    .prologue
    .line 787
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->disableLocationUpdates(J)V

    .line 788
    return-void
.end method

.method public disableLocationUpdates(J)V
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 793
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdatesForSubscriber(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v0

    goto :goto_0

    .line 794
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableDataConnectivity()Z
    .locals 3

    .prologue
    .line 3853
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3857
    :goto_0
    return v1

    .line 3854
    :catch_0
    move-exception v0

    .line 3855
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#enableDataConnectivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3857
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 2

    .prologue
    .line 755
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->enableLocationUpdates(J)V

    .line 756
    return-void
.end method

.method public enableLocationUpdates(J)V
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 771
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdatesForSubscriber(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_0
    return-void

    .line 773
    :catch_0
    move-exception v0

    goto :goto_0

    .line 772
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableSimplifiedNetworkSettings(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3950
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Landroid/telephony/TelephonyManager;->enableSimplifiedNetworkSettingsForSubscriber(JZ)V

    .line 3951
    return-void
.end method

.method public enableSimplifiedNetworkSettingsForSubscriber(JZ)V
    .locals 1
    .param p1, "subId"    # J
    .param p3, "enable"    # Z

    .prologue
    .line 3967
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->enableSimplifiedNetworkSettingsForSubscriber(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3971
    :goto_0
    return-void

    .line 3969
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3968
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public endCall()Z
    .locals 3

    .prologue
    .line 3503
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3507
    :goto_0
    return v1

    .line 3504
    :catch_0
    move-exception v0

    .line 3505
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#endCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3507
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public endCall(J)Z
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 3515
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->endCallForSubscriber(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3519
    :goto_0
    return v1

    .line 3516
    :catch_0
    move-exception v0

    .line 3517
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#endCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3519
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2597
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2601
    :goto_0
    return-object v1

    .line 2598
    :catch_0
    move-exception v0

    .line 2599
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2600
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2601
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getBtid()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5365
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getBtid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 5369
    :goto_0
    return-object v1

    .line 5366
    :catch_0
    move-exception v0

    .line 5367
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 5368
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5369
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallState()I
    .locals 2

    .prologue
    .line 2261
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2263
    :goto_0
    return v1

    .line 2262
    :catch_0
    move-exception v0

    .line 2263
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2262
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getCallState(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v1, 0x0

    .line 2276
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getCallStateForSubscriber(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2282
    :goto_0
    return v1

    .line 2277
    :catch_0
    move-exception v0

    .line 2279
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2280
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2282
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3446
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3452
    :goto_0
    return-object v1

    .line 3447
    :catch_0
    move-exception v0

    .line 3448
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "getCarrierPackageNamesForIntent RemoteException"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3452
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3449
    :catch_1
    move-exception v0

    .line 3450
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManager"

    const-string v2, "getCarrierPackageNamesForIntent NPE"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getCdmaEriIconIndex()I
    .locals 2

    .prologue
    .line 2433
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex(J)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v1, -0x1

    .line 2442
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndexForSubscriber(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2447
    :goto_0
    return v1

    .line 2443
    :catch_0
    move-exception v0

    .line 2445
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2446
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2447
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconMode()I
    .locals 2

    .prologue
    .line 2459
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode(J)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v1, -0x1

    .line 2470
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconModeForSubscriber(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2475
    :goto_0
    return v1

    .line 2471
    :catch_0
    move-exception v0

    .line 2473
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2474
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2475
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2485
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getCdmaEriText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriText(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v1, 0x0

    .line 2495
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriTextForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2500
    :goto_0
    return-object v1

    .line 2496
    :catch_0
    move-exception v0

    .line 2498
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2499
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2500
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaMdn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3396
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getCdmaMdn(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMdn(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v1, 0x0

    .line 3403
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getCdmaMdn(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3407
    :goto_0
    return-object v1

    .line 3404
    :catch_0
    move-exception v0

    .line 3405
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 3406
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3407
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3414
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getCdmaMin(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v1, 0x0

    .line 3421
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getCdmaMin(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3425
    :goto_0
    return-object v1

    .line 3422
    :catch_0
    move-exception v0

    .line 3423
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 3424
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3425
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 732
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 733
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 741
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v1

    .line 734
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 735
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 736
    goto :goto_0

    .line 738
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    move-object v1, v3

    .line 739
    goto :goto_0

    .line 740
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 741
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2083
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v1, 0x0

    .line 2097
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumberForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2102
    :goto_0
    return-object v1

    .line 2098
    :catch_0
    move-exception v0

    .line 2099
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2100
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2102
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentPhoneType()I
    .locals 2

    .prologue
    .line 842
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v0

    return v0
.end method

.method public getCurrentPhoneType(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 860
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 861
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 862
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeForSubscriber(J)I

    move-result v2

    .line 874
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 865
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 867
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 870
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(J)I

    move-result v2

    goto :goto_0

    .line 871
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 874
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(J)I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2312
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2318
    :goto_0
    return v1

    .line 2313
    :catch_0
    move-exception v0

    .line 2315
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2316
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2318
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataEnabled()Z
    .locals 3

    .prologue
    .line 3908
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3909
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3913
    :goto_0
    return v1

    .line 3910
    :catch_0
    move-exception v0

    .line 3911
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getDataEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3913
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataNetworkType()I
    .locals 2

    .prologue
    .line 1342
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(J)I

    move-result v0

    return v0
.end method

.method public getDataNetworkType(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v2, 0x0

    .line 1355
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1356
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1357
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkTypeForSubscriber(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1367
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 1362
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1365
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1367
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataRoamingEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4126
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataRoamingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 4130
    :goto_0
    return v1

    .line 4127
    :catch_0
    move-exception v0

    .line 4128
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 4129
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4130
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataRoamingEnabled(J)Z
    .locals 3
    .param p1, "lSubId"    # J

    .prologue
    const/4 v1, 0x0

    .line 4139
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getDataRoamingEnabledUsingSubID(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 4143
    :goto_0
    return v1

    .line 4140
    :catch_0
    move-exception v0

    .line 4141
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 4142
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4143
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataServiceState()I
    .locals 2

    .prologue
    .line 4218
    const/4 v0, 0x0

    .line 4220
    .local v0, "state":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4224
    :goto_0
    return v0

    .line 4222
    :catch_0
    move-exception v1

    goto :goto_0

    .line 4221
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getDataServiceState(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 4232
    const/4 v0, 0x0

    .line 4234
    .local v0, "state":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getDataServiceStateUsingSubId(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4238
    :goto_0
    return v0

    .line 4236
    :catch_0
    move-exception v1

    goto :goto_0

    .line 4235
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2348
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2353
    :goto_0
    return v1

    .line 2349
    :catch_0
    move-exception v0

    .line 2351
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2352
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2353
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataState(J)I
    .locals 3
    .param p1, "lSubId"    # J

    .prologue
    const/4 v1, 0x0

    .line 2369
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getDataStateSimSlot(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2374
    :goto_0
    return v1

    .line 2370
    :catch_0
    move-exception v0

    .line 2372
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2373
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2374
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDefaultSim()I
    .locals 1

    .prologue
    .line 2979
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 674
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 676
    .local v1, "subId":[J
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceIdForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 680
    :goto_0
    return-object v2

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 679
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 680
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 637
    const-string v2, "SPR-CDMA"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 640
    const-string v1, "gsm.version.baseband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 648
    :goto_0
    return-object v1

    .line 644
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 647
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 648
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1847
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1852
    :goto_0
    return-object v1

    .line 1848
    :catch_0
    move-exception v0

    .line 1849
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1850
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1852
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getGroupIdLevel1(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v1, 0x0

    .line 1868
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1ForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1873
    :goto_0
    return-object v1

    .line 1869
    :catch_0
    move-exception v0

    .line 1870
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1871
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1873
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appType"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 3224
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSimChallengeResponse(JILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J
    .param p3, "appType"    # I
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3206
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSimChallengeResponse(JILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3211
    :goto_0
    return-object v1

    .line 3207
    :catch_0
    move-exception v0

    .line 3208
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 3209
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3211
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 692
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 705
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 707
    .local v1, "subId":[J
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getImeiForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 711
    :goto_0
    return-object v2

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 710
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 711
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getImsLine1Number()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5576
    sget-boolean v0, Landroid/telephony/TelephonyManager;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    .line 5577
    const-string v0, "TelephonyManager"

    const-string v1, "getImsLine1Number"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5582
    :goto_0
    sget-object v0, Landroid/telephony/TelephonyManager;->mImsLineNumber:Ljava/lang/String;

    return-object v0

    .line 5579
    :cond_0
    const-string v0, "TelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsLine1Number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/TelephonyManager;->mImsLineNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getImsRegisteredFeature()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4093
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getImsRegisteredFeature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 4098
    :goto_0
    return v1

    .line 4094
    :catch_0
    move-exception v0

    .line 4095
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 4096
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4098
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimAid()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5387
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimAid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 5391
    :goto_0
    return-object v1

    .line 5388
    :catch_0
    move-exception v0

    .line 5389
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 5390
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5391
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3186
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3191
    :goto_0
    return-object v1

    .line 3187
    :catch_0
    move-exception v0

    .line 3188
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 3189
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3191
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2191
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2196
    :goto_0
    return-object v1

    .line 2192
    :catch_0
    move-exception v0

    .line 2193
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2194
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2196
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2175
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2180
    :goto_0
    return-object v1

    .line 2176
    :catch_0
    move-exception v0

    .line 2177
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2178
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2180
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2208
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2213
    :goto_0
    return-object v1

    .line 2209
    :catch_0
    move-exception v0

    .line 2210
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2211
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2213
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3150
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3155
    :goto_0
    return-object v1

    .line 3151
    :catch_0
    move-exception v0

    .line 3152
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 3153
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3155
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3167
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscf()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3172
    :goto_0
    return-object v1

    .line 3168
    :catch_0
    move-exception v0

    .line 3169
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 3170
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3172
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getKeyLifetime()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5376
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getKeyLifetime()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 5380
    :goto_0
    return-object v1

    .line 5377
    :catch_0
    move-exception v0

    .line 5378
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 5379
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5380
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLGUplusKnightInfo()Ljava/util/HashMap;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 4614
    const-string v6, "LGT"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4619
    const/4 v3, 0x0

    .line 4620
    .local v3, "mLGUplusKnightInfo":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 4622
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->getMobileQualityInformation()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 4629
    const/4 v0, 0x0

    .line 4631
    .local v0, "Values":[Ljava/lang/String;
    :try_start_1
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 4636
    const-string v5, "getLGUplusKnightInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4638
    const-string v5, "IMSI"

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4639
    const-string v5, "GUTI"

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4640
    const-string v5, "IP"

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4641
    const-string v5, "Antenna Bar"

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4642
    const-string v5, "NV Mode"

    const/4 v6, 0x4

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4643
    const-string v5, "Service State"

    const/4 v6, 0x5

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4644
    const-string v5, "LAC"

    const/4 v6, 0x6

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4645
    const-string v5, "TAC"

    const/4 v6, 0x7

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4646
    const-string v5, "Band"

    const/16 v6, 0x8

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4647
    const-string v5, "Bandwidth"

    const/16 v6, 0x9

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4648
    const-string v5, "PCI"

    const/16 v6, 0xa

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4649
    const-string v5, "TX"

    const/16 v6, 0xb

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4650
    const-string v5, "RSSI"

    const/16 v6, 0xc

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4651
    const-string v5, "RSRP"

    const/16 v6, 0xd

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4652
    const-string v5, "RSRQ"

    const/16 v6, 0xe

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4653
    const-string v5, "SINR"

    const/16 v6, 0xf

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4654
    const-string v5, "EARFCN downlink"

    const/16 v6, 0x10

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4655
    const-string v5, "EARFCN uplink"

    const/16 v6, 0x11

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4656
    const-string v5, "EMM cause"

    const/16 v6, 0x12

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4657
    const-string v5, "EMM state"

    const/16 v6, 0x13

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4658
    const-string v5, "EMM connection state"

    const/16 v6, 0x14

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4659
    const-string v5, "Default Bearer count"

    const/16 v6, 0x15

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4660
    const-string v5, "Dedicated Bearer count"

    const/16 v6, 0x16

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4662
    .end local v0    # "Values":[Ljava/lang/String;
    .end local v3    # "mLGUplusKnightInfo":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v4

    :cond_0
    move-object v4, v5

    .line 4616
    goto :goto_0

    .line 4623
    .restart local v3    # "mLGUplusKnightInfo":Ljava/lang/String;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 4624
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v6, "TelephonyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMobileQualityInformation() - Exception occured : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 4625
    goto :goto_0

    .line 4632
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "Values":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 4633
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "TelephonyManager"

    const-string v7, "getLGUplusKnightInfo() - Values is not valid"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 4634
    goto :goto_0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1973
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getLine1AlphaTagForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTagForSubscriber(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    const/4 v2, 0x0

    .line 1988
    const/4 v0, 0x0

    .line 1990
    .local v0, "alphaTag":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getLine1AlphaTagForDisplay(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 1994
    :goto_0
    if-eqz v0, :cond_0

    .line 2003
    .end local v0    # "alphaTag":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1998
    .restart local v0    # "alphaTag":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTagForSubscriber(J)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 1999
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    move-object v0, v2

    .line 2000
    goto :goto_1

    .line 2001
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    move-object v0, v2

    .line 2003
    goto :goto_1

    .line 1992
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v3

    goto :goto_0

    .line 1991
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1885
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberForSubscriber(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    const/4 v2, 0x0

    .line 1901
    const/4 v1, 0x0

    .line 1913
    .local v1, "number":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1918
    :goto_0
    return-object v2

    .line 1914
    :catch_0
    move-exception v0

    .line 1915
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1916
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1918
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1NumberType(I)Ljava/lang/String;
    .locals 3
    .param p1, "SimType"    # I

    .prologue
    const/4 v1, 0x0

    .line 5479
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 5484
    :goto_0
    return-object v1

    .line 5480
    :catch_0
    move-exception v0

    .line 5481
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 5482
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5484
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLteOnCdmaMode()I
    .locals 2

    .prologue
    .line 1773
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(J)I

    move-result v0

    return v0
.end method

.method public getLteOnCdmaMode(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v1, -0x1

    .line 1789
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaModeForSubscriber(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1795
    :goto_0
    return v1

    .line 1790
    :catch_0
    move-exception v0

    .line 1792
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1793
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1795
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMmsUAProfUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2679
    const/4 v0, 0x0

    .line 2680
    .local v0, "sUaProfUrl":Ljava/lang/String;
    const-string v0, "http://wap.samsungmobile.com/uaprof/SM-N910F.xml"

    .line 2714
    if-eqz v0, :cond_0

    .line 2719
    .end local v0    # "sUaProfUrl":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2718
    .restart local v0    # "sUaProfUrl":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2719
    :cond_1
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMmsUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2629
    const/4 v0, 0x0

    .line 2630
    .local v0, "sUserAgent":Ljava/lang/String;
    const-string v0, "SAMSUNG-ANDROID-MMS/SM-N910F"

    .line 2666
    if-eqz v0, :cond_0

    .line 2671
    .end local v0    # "sUserAgent":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2670
    .restart local v0    # "sUserAgent":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2671
    :cond_1
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMobileQualityInformation()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 4454
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2017
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getMsisdn(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v1, 0x0

    .line 2032
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdnForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2037
    :goto_0
    return-object v1

    .line 2033
    :catch_0
    move-exception v0

    .line 2034
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2035
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2037
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;
    .locals 2

    .prologue
    .line 191
    const-string/jumbo v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "mSimConfig":Ljava/lang/String;
    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 200
    :goto_0
    return-object v1

    .line 195
    :cond_0
    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    goto :goto_0

    .line 197
    :cond_1
    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    goto :goto_0

    .line 200
    :cond_2
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    goto :goto_0
.end method

.method public getMultiSimForegroundPhoneId()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5444
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getMultiSimForegroundPhoneId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 5448
    :goto_0
    return v1

    .line 5445
    :catch_0
    move-exception v0

    .line 5446
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 5447
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5448
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMultiSimLastRejectIncomingCallPhoneId()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5422
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getMultiSimLastRejectIncomingCallPhoneId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 5426
    :goto_0
    return v1

    .line 5423
    :catch_0
    move-exception v0

    .line 5424
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 5425
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5426
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 812
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 816
    :goto_0
    return-object v1

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 815
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 816
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1187
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 1202
    const-string v0, "gsm.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, p1, p2, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1124
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 1139
    const-string v1, "SPR-CDMA"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1141
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1142
    const-string/jumbo v1, "ro.cdma.home.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1143
    .local v0, "homeOperatorNumeric":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 1149
    .end local v0    # "homeOperatorNumeric":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "gsm.operator.numeric"

    const-string v2, ""

    invoke-static {v1, p1, p2, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1079
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    const/4 v4, 0x2

    .line 1093
    const-string v2, "SPR-CDMA"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1095
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1096
    const-string/jumbo v2, "ro.cdma.home.operator.alpha"

    const-string v3, ""

    invoke-static {v2, p1, p2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, "homeOperatorAlpha":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 1112
    .end local v0    # "homeOperatorAlpha":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1102
    :cond_0
    const-string v2, "gsm.operator.numeric"

    const-string v3, ""

    invoke-static {v2, p1, p2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1106
    .local v1, "operatorNumeric":Ljava/lang/String;
    const-string v2, "44020"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1107
    const-string v0, "SoftBank"

    goto :goto_0

    .line 1112
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    :cond_1
    const-string v2, "gsm.operator.alpha"

    const-string v3, ""

    invoke-static {v2, p1, p2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 1265
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    return v0
.end method

.method public getNetworkType(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v2, 0x0

    .line 1298
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1299
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1300
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeForSubscriber(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1310
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 1305
    :catch_0
    move-exception v0

    .line 1307
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1308
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1310
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1466
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 3235
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3237
    :goto_0
    return-object v1

    .line 3236
    :catch_0
    move-exception v0

    .line 3237
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhoneCount()I
    .locals 3

    .prologue
    .line 212
    const/4 v0, 0x1

    .line 213
    .local v0, "phoneCount":I
    sget-object v1, Landroid/telephony/TelephonyManager$1;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 222
    :goto_0
    return v0

    .line 216
    :pswitch_0
    const/4 v0, 0x2

    .line 217
    goto :goto_0

    .line 219
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 888
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    const/4 v0, 0x0

    .line 891
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public getPreferredNetworkType()I
    .locals 3

    .prologue
    .line 3267
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3273
    :goto_0
    return v1

    .line 3268
    :catch_0
    move-exception v0

    .line 3269
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "getPreferredNetworkType RemoteException"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3273
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 3270
    :catch_1
    move-exception v0

    .line 3271
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManager"

    const-string v2, "getPreferredNetworkType NPE"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getPsismsc()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5531
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getPsismsc()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 5535
    :goto_0
    return-object v1

    .line 5532
    :catch_0
    move-exception v0

    .line 5533
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 5534
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5535
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getRand()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5354
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getRand()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 5358
    :goto_0
    return-object v1

    .line 5355
    :catch_0
    move-exception v0

    .line 5356
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 5357
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5358
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSdnAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 5318
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSdnAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 5324
    :goto_0
    return v1

    .line 5319
    :catch_0
    move-exception v0

    .line 5321
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 5322
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5324
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSelectedApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4165
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4166
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getSelectedApn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4170
    :goto_0
    return-object v0

    .line 4168
    :catch_0
    move-exception v0

    .line 4170
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4167
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getServiceState()I
    .locals 2

    .prologue
    .line 4191
    const/4 v0, 0x0

    .line 4193
    .local v0, "state":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4197
    :goto_0
    return v0

    .line 4195
    :catch_0
    move-exception v1

    goto :goto_0

    .line 4194
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getServiceState(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 4204
    const/4 v0, 0x0

    .line 4206
    .local v0, "state":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getServiceStateUsingSubId(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4210
    :goto_0
    return v0

    .line 4208
    :catch_0
    move-exception v1

    goto :goto_0

    .line 4207
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getSimCount()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 3131
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3133
    const/4 v0, 0x2

    .line 3139
    :cond_0
    :goto_0
    return v0

    .line 3135
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 3136
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCount(): persist.radio.multisim.config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "persist.radio.multisim.config"

    const-string v4, "NULL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1717
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIso(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 1727
    const-string v0, "gsm.sim.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, p1, p2, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1660
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    .line 1661
    .local v0, "subId":J
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimOperator(): default subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSimOperator(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    .line 1677
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, p1, p2, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1679
    .local v0, "operator":Ljava/lang/String;
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimOperator: subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " operator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1691
    const-string v0, "VZW-CDMA"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1693
    const-string v0, "Verizon"

    .line 1695
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimOperatorName(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 1709
    const-string v0, "gsm.sim.operator.alpha"

    const-string v1, ""

    invoke-static {v0, p1, p2, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1739
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v1, 0x0

    .line 1753
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1758
    :goto_0
    return-object v1

    .line 1754
    :catch_0
    move-exception v0

    .line 1755
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1756
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1758
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState()I
    .locals 1

    .prologue
    .line 1601
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public getSimState(I)I
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1620
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1621
    .local v1, "subId":[J
    if-nez v1, :cond_1

    .line 1647
    :cond_0
    :goto_0
    return v2

    .line 1626
    :cond_1
    const-string v4, "gsm.sim.state"

    aget-wide v6, v1, v3

    const-string v5, ""

    invoke-static {v4, v6, v7, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1628
    .local v0, "prop":Ljava/lang/String;
    const-string v4, "ABSENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1631
    const-string v2, "PIN_REQUIRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1632
    const/4 v2, 0x2

    goto :goto_0

    .line 1634
    :cond_2
    const-string v2, "PUK_REQUIRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1635
    const/4 v2, 0x3

    goto :goto_0

    .line 1637
    :cond_3
    const-string v2, "NETWORK_LOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1638
    const/4 v2, 0x4

    goto :goto_0

    .line 1640
    :cond_4
    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1641
    const/4 v2, 0x5

    goto :goto_0

    .line 1643
    :cond_5
    const-string v2, "CARD_IO_ERROR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1644
    const/4 v2, 0x6

    goto :goto_0

    :cond_6
    move v2, v3

    .line 1647
    goto :goto_0
.end method

.method public getSimplifiedNetworkSettingsEnabled()Z
    .locals 2

    .prologue
    .line 3984
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getSimplifiedNetworkSettingsEnabledForSubscriber(J)Z

    move-result v0

    return v0
.end method

.method public getSimplifiedNetworkSettingsEnabledForSubscriber(J)Z
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 4000
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getSimplifiedNetworkSettingsEnabledForSubscriber(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4004
    :goto_0
    return v0

    .line 4002
    :catch_0
    move-exception v0

    .line 4004
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4001
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4032
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSponImsi()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 4037
    :goto_0
    return-object v1

    .line 4033
    :catch_0
    move-exception v0

    .line 4034
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 4035
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4037
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1813
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v1, 0x0

    .line 1829
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1834
    :goto_0
    return-object v1

    .line 1830
    :catch_0
    move-exception v0

    .line 1831
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1832
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1834
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSubscriberIdType(I)Ljava/lang/String;
    .locals 3
    .param p1, "SimType"    # I

    .prologue
    const/4 v1, 0x0

    .line 5500
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 5505
    :goto_0
    return-object v1

    .line 5501
    :catch_0
    move-exception v0

    .line 5502
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 5503
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5505
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2144
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v1, 0x0

    .line 2159
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTagForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2164
    :goto_0
    return-object v1

    .line 2160
    :catch_0
    move-exception v0

    .line 2161
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2162
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2164
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2048
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v1, 0x0

    .line 2065
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumberForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2070
    :goto_0
    return-object v1

    .line 2066
    :catch_0
    move-exception v0

    .line 2067
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2068
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2070
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 2

    .prologue
    .line 2114
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount(J)I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCount(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v1, 0x0

    .line 2127
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCountForSubscriber(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2132
    :goto_0
    return v1

    .line 2128
    :catch_0
    move-exception v0

    .line 2129
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2130
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2132
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceNetworkType()I
    .locals 2

    .prologue
    .line 1377
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(J)I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkType(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v2, 0x0

    .line 1387
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1388
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1389
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkTypeForSubscriber(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1399
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 1394
    :catch_0
    move-exception v0

    .line 1396
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1397
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1399
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public handlePinMmi(JLjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # J
    .param p3, "dialString"    # Ljava/lang/String;

    .prologue
    .line 3774
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiForSubscriber(JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3778
    :goto_0
    return v1

    .line 3775
    :catch_0
    move-exception v0

    .line 3776
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#handlePinMmi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3778
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 3762
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3766
    :goto_0
    return v1

    .line 3763
    :catch_0
    move-exception v0

    .line 3764
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#handlePinMmi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3766
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasCall(Ljava/lang/String;)Z
    .locals 3
    .param p1, "callType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 4111
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->hasCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 4115
    :goto_0
    return v1

    .line 4112
    :catch_0
    move-exception v0

    .line 4113
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 4114
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4115
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasCarrierPrivileges()I
    .locals 3

    .prologue
    .line 3353
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->hasCarrierPrivileges()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3359
    :goto_0
    return v1

    .line 3354
    :catch_0
    move-exception v0

    .line 3355
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "hasCarrierPrivileges RemoteException"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3359
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3356
    :catch_1
    move-exception v0

    .line 3357
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManager"

    const-string v2, "hasCarrierPrivileges NPE"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public hasIccCard()Z
    .locals 2

    .prologue
    .line 1562
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(J)Z

    move-result v0

    return v0
.end method

.method public hasIccCard(J)Z
    .locals 3
    .param p1, "slotId"    # J

    .prologue
    const/4 v1, 0x0

    .line 1578
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->hasIccCardUsingSlotId(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1584
    :goto_0
    return v1

    .line 1579
    :catch_0
    move-exception v0

    .line 1581
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1582
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1584
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasIsim()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5513
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->hasIsim()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 5517
    :goto_0
    return v1

    .line 5514
    :catch_0
    move-exception v0

    .line 5515
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 5516
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5517
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccCloseLogicalChannel(I)Z
    .locals 1
    .param p1, "channel"    # I

    .prologue
    .line 2757
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2761
    :goto_0
    return v0

    .line 2759
    :catch_0
    move-exception v0

    .line 2761
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2758
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;)[B
    .locals 7
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;

    .prologue
    .line 2841
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony;->iccExchangeSimIO(IIIIILjava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2846
    :goto_0
    return-object v0

    .line 2844
    :catch_0
    move-exception v0

    .line 2846
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2843
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 1
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    .line 2736
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2740
    :goto_0
    return-object v0

    .line 2738
    :catch_0
    move-exception v0

    .line 2740
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2737
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;

    .prologue
    .line 2816
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2821
    :goto_0
    return-object v0

    .line 2819
    :catch_0
    move-exception v0

    .line 2821
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 2818
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 2787
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2792
    :goto_0
    return-object v0

    .line 2790
    :catch_0
    move-exception v0

    .line 2792
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 2789
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .locals 1
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B

    .prologue
    .line 4019
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4023
    :goto_0
    return v0

    .line 4021
    :catch_0
    move-exception v0

    .line 4023
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 4020
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5605
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isApnTypeAvailable(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5609
    :goto_0
    return v1

    .line 5606
    :catch_0
    move-exception v0

    .line 5607
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isApnTypeAvailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5609
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDataConnectivityPossible()Z
    .locals 3

    .prologue
    .line 3875
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3879
    :goto_0
    return v1

    .line 3876
    :catch_0
    move-exception v0

    .line 3877
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isDataConnectivityPossible"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3879
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isExtraCapable(I)Z
    .locals 5
    .param p1, "capableType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2551
    if-ne p1, v2, :cond_0

    .line 2553
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_DisableSmartBonding"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2555
    const-string/jumbo v3, "ro.csc.sales_code"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2556
    .local v0, "salesCode":Ljava/lang/String;
    const-string v3, "TelephonyManager"

    const-string v4, "isExtraCapable(Download Booster) : all features are enabled"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    const-string v3, "XAS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2558
    const-string v3, "312530"

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2559
    const-string v2, "TelephonyManager"

    const-string v3, "isExtraCapable(Download Booster) : blocked for Sprint Prepaid"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    .end local v0    # "salesCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "salesCode":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 2563
    goto :goto_0

    .end local v0    # "salesCode":Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 2566
    goto :goto_0
.end method

.method public isGbaSupported()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5341
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->isGbaSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 5345
    :goto_0
    return v1

    .line 5342
    :catch_0
    move-exception v0

    .line 5343
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 5344
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5345
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isIdle()Z
    .locals 3

    .prologue
    .line 3607
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3611
    :goto_0
    return v1

    .line 3608
    :catch_0
    move-exception v0

    .line 3609
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isIdle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3611
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isIdle(J)Z
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 3619
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3623
    :goto_0
    return v1

    .line 3620
    :catch_0
    move-exception v0

    .line 3621
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isIdle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3623
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isImsRegistered()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4048
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->isImsRegistered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 4053
    :goto_0
    return v1

    .line 4049
    :catch_0
    move-exception v0

    .line 4050
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 4051
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4053
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isMultiSimEnabled()Z
    .locals 2

    .prologue
    .line 232
    sget-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 2

    .prologue
    .line 1160
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(J)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(J)Z
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 1174
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOffhook()Z
    .locals 3

    .prologue
    .line 3559
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3563
    :goto_0
    return v1

    .line 3560
    :catch_0
    move-exception v0

    .line 3561
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isOffhook"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3563
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOffhook(J)Z
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 3571
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isOffhookForSubscriber(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3575
    :goto_0
    return v1

    .line 3572
    :catch_0
    move-exception v0

    .line 3573
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isOffhook"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3575
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRadioOn()Z
    .locals 3

    .prologue
    .line 3631
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3635
    :goto_0
    return v1

    .line 3632
    :catch_0
    move-exception v0

    .line 3633
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isRadioOn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3635
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRadioOn(J)Z
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 3643
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3647
    :goto_0
    return v1

    .line 3644
    :catch_0
    move-exception v0

    .line 3645
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isRadioOn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3647
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 3

    .prologue
    .line 3583
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3587
    :goto_0
    return v1

    .line 3584
    :catch_0
    move-exception v0

    .line 3585
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isRinging"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3587
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRinging(J)Z
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 3595
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isRingingForSubscriber(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3599
    :goto_0
    return v1

    .line 3596
    :catch_0
    move-exception v0

    .line 3597
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isRinging"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3599
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSimPinEnabled()Z
    .locals 3

    .prologue
    .line 3655
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isSimPinEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3659
    :goto_0
    return v1

    .line 3656
    :catch_0
    move-exception v0

    .line 3657
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isSimPinEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3659
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSmsCapable()Z
    .locals 2

    .prologue
    .line 2536
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2537
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isVideoCall()Z
    .locals 5

    .prologue
    .line 5548
    const/4 v1, 0x0

    .line 5550
    .local v1, "ret":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isVideoCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5554
    :goto_0
    return v1

    .line 5551
    :catch_0
    move-exception v0

    .line 5552
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVideoCall() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isVoiceCapable()Z
    .locals 2

    .prologue
    .line 2521
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2522
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isVolteRegistered()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4063
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->isVolteRegistered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 4068
    :goto_0
    return v1

    .line 4064
    :catch_0
    move-exception v0

    .line 4065
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 4066
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4068
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isWfcRegistered()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4078
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->isWfcRegistered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 4083
    :goto_0
    return v1

    .line 4079
    :catch_0
    move-exception v0

    .line 4080
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 4081
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4083
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 8
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 2416
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2418
    .local v4, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2419
    .local v0, "notifyNow":Ljava/lang/Boolean;
    sget-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-wide v2, p1, Landroid/telephony/PhoneStateListener;->mSubId:J

    iget-object v5, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move v6, p2

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ITelephonyRegistry;->listenForSubscriber(JLjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2425
    .end local v0    # "notifyNow":Ljava/lang/Boolean;
    :goto_2
    return-void

    .line 2416
    .end local v4    # "pkgForDebug":Ljava/lang/String;
    :cond_0
    const-string v4, "<unknown>"

    goto :goto_0

    .line 2418
    .restart local v4    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 2422
    :catch_0
    move-exception v1

    goto :goto_2

    .line 2420
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 3

    .prologue
    .line 3886
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3890
    :goto_0
    return v1

    .line 3887
    :catch_0
    move-exception v0

    .line 3888
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#needsOtaServiceProvisioning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3890
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nvReadItem(I)Ljava/lang/String;
    .locals 3
    .param p1, "itemID"    # I

    .prologue
    .line 2886
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->nvReadItem(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2892
    :goto_0
    return-object v1

    .line 2887
    :catch_0
    move-exception v0

    .line 2888
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "nvReadItem RemoteException"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2892
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 2889
    :catch_1
    move-exception v0

    .line 2890
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManager"

    const-string v2, "nvReadItem NPE"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public nvResetConfig(I)Z
    .locals 3
    .param p1, "resetType"    # I

    .prologue
    .line 2960
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->nvResetConfig(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2966
    :goto_0
    return v1

    .line 2961
    :catch_0
    move-exception v0

    .line 2962
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "nvResetConfig RemoteException"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2966
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2963
    :catch_1
    move-exception v0

    .line 2964
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManager"

    const-string v2, "nvResetConfig NPE"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public nvWriteCdmaPrl([B)Z
    .locals 3
    .param p1, "preferredRoamingList"    # [B

    .prologue
    .line 2935
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->nvWriteCdmaPrl([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2941
    :goto_0
    return v1

    .line 2936
    :catch_0
    move-exception v0

    .line 2937
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "nvWriteCdmaPrl RemoteException"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2941
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2938
    :catch_1
    move-exception v0

    .line 2939
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManager"

    const-string v2, "nvWriteCdmaPrl NPE"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public nvWriteItem(ILjava/lang/String;)Z
    .locals 3
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;

    .prologue
    .line 2911
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->nvWriteItem(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2917
    :goto_0
    return v1

    .line 2912
    :catch_0
    move-exception v0

    .line 2913
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "nvWriteItem RemoteException"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2917
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2914
    :catch_1
    move-exception v0

    .line 2915
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManager"

    const-string v2, "nvWriteItem NPE"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public oem_ssa_alarm_event([B)[B
    .locals 1
    .param p1, "setCmd"    # [B

    .prologue
    .line 5175
    const/4 v0, 0x0

    return-object v0
.end method

.method public oem_ssa_check_mem()[I
    .locals 1

    .prologue
    .line 5248
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->uknight_mem_check()[I

    move-result-object v0

    return-object v0
.end method

.method public oem_ssa_get_data()[B
    .locals 1

    .prologue
    .line 5234
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->uknight_get_data()[B

    move-result-object v0

    return-object v0
.end method

.method public oem_ssa_hdv_alarm_event([B)[B
    .locals 1
    .param p1, "setCmd"    # [B

    .prologue
    .line 5257
    const/4 v0, 0x0

    return-object v0
.end method

.method public oem_ssa_set_event([B)[B
    .locals 2
    .param p1, "setCmd"    # [B

    .prologue
    .line 5163
    sget-boolean v0, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 5164
    const-string v0, "DmLoggingService"

    const-string v1, "oem_ssa_set_event() +"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5166
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->uknight_event_set([B)[B

    move-result-object v0

    return-object v0
.end method

.method public oem_ssa_set_log([B[B)[B
    .locals 4
    .param p1, "startCode"    # [B
    .param p2, "maskCode"    # [B

    .prologue
    const/4 v3, 0x0

    .line 5150
    const/4 v0, 0x0

    .line 5151
    .local v0, "setCmd":[B
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 5152
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 5153
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 5154
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 5156
    :cond_0
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->uknight_log_set([B)[B

    move-result-object v1

    return-object v1
.end method

.method public oem_ssa_set_mem(I)Z
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 5241
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->uknight_mem_set(I)Z

    move-result v0

    return v0
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 2864
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2868
    :goto_0
    return-object v0

    .line 2866
    :catch_0
    move-exception v0

    .line 2868
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 2865
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setCellInfoListRate(I)V
    .locals 1
    .param p1, "rateInMillis"    # I

    .prologue
    .line 2619
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2623
    :goto_0
    return-void

    .line 2621
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2620
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setDataEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 3897
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3898
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setDataEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3902
    :cond_0
    :goto_0
    return-void

    .line 3899
    :catch_0
    move-exception v0

    .line 3900
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setDataEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 4153
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4157
    :goto_0
    return-void

    .line 4155
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4154
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setEPSLOCI([B)V
    .locals 2
    .param p1, "newEpsloci"    # [B

    .prologue
    .line 5457
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setEPSLOCI([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5463
    :goto_0
    return-void

    .line 5458
    :catch_0
    move-exception v0

    .line 5459
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 5460
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5461
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;

    .prologue
    .line 5398
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5404
    :goto_0
    return-void

    .line 5401
    :catch_0
    move-exception v0

    goto :goto_0

    .line 5399
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setGlobalPreferredNetworkType()Z
    .locals 1

    .prologue
    .line 3311
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(I)Z

    move-result v0

    return v0
.end method

.method public setImsLine1Number(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 5563
    sget-boolean v0, Landroid/telephony/TelephonyManager;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    .line 5564
    const-string v0, "TelephonyManager"

    const-string/jumbo v1, "setImsLine1Number"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5569
    :goto_0
    sput-object p1, Landroid/telephony/TelephonyManager;->mImsLineNumber:Ljava/lang/String;

    .line 5570
    return-void

    .line 5566
    :cond_0
    const-string v0, "TelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImsLine1Number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setImsRegistrationState(Z)V
    .locals 1
    .param p1, "registered"    # Z

    .prologue
    .line 3249
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setImsRegistrationState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3252
    :goto_0
    return-void

    .line 3250
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setLine1NumberForDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 1937
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/telephony/TelephonyManager;->setLine1NumberForDisplayForSubscriber(JLjava/lang/String;Ljava/lang/String;)V

    .line 1938
    return-void
.end method

.method public setLine1NumberForDisplayForSubscriber(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "subId"    # J
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;

    .prologue
    .line 1957
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephony;->setLine1NumberForDisplayForSubscriber(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1961
    :goto_0
    return-void

    .line 1959
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1958
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setMultiSimForegroundPhoneId(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 5433
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setMultiSimForegroundPhoneId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5439
    :goto_0
    return-void

    .line 5434
    :catch_0
    move-exception v0

    .line 5435
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 5436
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5437
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setMultiSimLastRejectIncomingCallPhoneId(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 5411
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setMultiSimLastRejectIncomingCallPhoneId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5417
    :goto_0
    return-void

    .line 5412
    :catch_0
    move-exception v0

    .line 5413
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 5414
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5415
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 3
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 3380
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setOperatorBrandOverride(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3386
    :goto_0
    return v1

    .line 3381
    :catch_0
    move-exception v0

    .line 3382
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setOperatorBrandOverride RemoteException"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3386
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3383
    :catch_1
    move-exception v0

    .line 3384
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setOperatorBrandOverride NPE"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setPcoValue(I)V
    .locals 1
    .param p1, "newPco"    # I

    .prologue
    .line 5594
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->setPcoValue(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5598
    :goto_0
    return-void

    .line 5596
    :catch_0
    move-exception v0

    goto :goto_0

    .line 5595
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setPreferredNetworkType(I)Z
    .locals 3
    .param p1, "networkType"    # I

    .prologue
    .line 3290
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3296
    :goto_0
    return v1

    .line 3291
    :catch_0
    move-exception v0

    .line 3292
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setPreferredNetworkType RemoteException"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3296
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3293
    :catch_1
    move-exception v0

    .line 3294
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setPreferredNetworkType NPE"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setRadio(JZ)Z
    .locals 3
    .param p1, "subId"    # J
    .param p3, "turnOn"    # Z

    .prologue
    .line 3820
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setRadioForSubscriber(JZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3824
    :goto_0
    return v1

    .line 3821
    :catch_0
    move-exception v0

    .line 3822
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setRadio"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3824
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadio(Z)Z
    .locals 3
    .param p1, "turnOn"    # Z

    .prologue
    .line 3808
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3812
    :goto_0
    return v1

    .line 3809
    :catch_0
    move-exception v0

    .line 3810
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setRadio"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3812
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadioPower(Z)Z
    .locals 3
    .param p1, "turnOn"    # Z

    .prologue
    .line 3832
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadioPower(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3836
    :goto_0
    return v1

    .line 3833
    :catch_0
    move-exception v0

    .line 3834
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setRadioPower"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3836
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSelectedApn()V
    .locals 1

    .prologue
    .line 4179
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4180
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->setSelectedApn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4184
    :cond_0
    :goto_0
    return-void

    .line 4182
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4181
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public silenceRinger()V
    .locals 3

    .prologue
    .line 3549
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3553
    :goto_0
    return-void

    .line 3550
    :catch_0
    move-exception v0

    .line 3551
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelecomService#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startMobileQualityInformation()V
    .locals 2

    .prologue
    .line 4591
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->startMobileQualityInformation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4594
    :goto_0
    return-void

    .line 4593
    :catch_0
    move-exception v0

    .line 4594
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stopMobileQualityInformation()V
    .locals 2

    .prologue
    .line 4603
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->stopMobileQualityInformation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4606
    :goto_0
    return-void

    .line 4605
    :catch_0
    move-exception v0

    .line 4606
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public supplyPin(JLjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # J
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    .line 3678
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->supplyPinForSubscriber(JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3682
    :goto_0
    return v1

    .line 3679
    :catch_0
    move-exception v0

    .line 3680
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPin"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3682
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 3666
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3670
    :goto_0
    return v1

    .line 3667
    :catch_0
    move-exception v0

    .line 3668
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPin"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3670
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supplyPinReportResult(JLjava/lang/String;)[I
    .locals 3
    .param p1, "subId"    # J
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    .line 3726
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(JLjava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3730
    :goto_0
    return-object v1

    .line 3727
    :catch_0
    move-exception v0

    .line 3728
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPinReportResult"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3730
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 3714
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResult(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3718
    :goto_0
    return-object v1

    .line 3715
    :catch_0
    move-exception v0

    .line 3716
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPinReportResult"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3718
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public supplyPuk(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # J
    .param p3, "puk"    # Ljava/lang/String;
    .param p4, "pin"    # Ljava/lang/String;

    .prologue
    .line 3702
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephony;->supplyPukForSubscriber(JLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3706
    :goto_0
    return v1

    .line 3703
    :catch_0
    move-exception v0

    .line 3704
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPuk"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3706
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 3690
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3694
    :goto_0
    return v1

    .line 3691
    :catch_0
    move-exception v0

    .line 3692
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPuk"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3694
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supplyPukReportResult(JLjava/lang/String;Ljava/lang/String;)[I
    .locals 3
    .param p1, "subId"    # J
    .param p3, "puk"    # Ljava/lang/String;
    .param p4, "pin"    # Ljava/lang/String;

    .prologue
    .line 3750
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(JLjava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3754
    :goto_0
    return-object v1

    .line 3751
    :catch_0
    move-exception v0

    .line 3752
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3754
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 3738
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3742
    :goto_0
    return-object v1

    .line 3739
    :catch_0
    move-exception v0

    .line 3740
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3742
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public toggleRadioOnOff()V
    .locals 3

    .prologue
    .line 3786
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3790
    :goto_0
    return-void

    .line 3787
    :catch_0
    move-exception v0

    .line 3788
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#toggleRadioOnOff"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toggleRadioOnOff(J)V
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 3797
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOffForSubscriber(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3801
    :goto_0
    return-void

    .line 3798
    :catch_0
    move-exception v0

    .line 3799
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#toggleRadioOnOff"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public uknight_event_set([B)[B
    .locals 1
    .param p1, "setCmd"    # [B

    .prologue
    .line 4869
    const/4 v0, 0x0

    return-object v0
.end method

.method public uknight_get_data()[B
    .locals 1

    .prologue
    .line 5030
    const/4 v0, 0x0

    return-object v0
.end method

.method public uknight_log_set([B)[B
    .locals 1
    .param p1, "setCmd"    # [B

    .prologue
    .line 4814
    const/4 v0, 0x0

    return-object v0
.end method

.method public uknight_mem_check()[I
    .locals 1

    .prologue
    .line 5110
    const/4 v0, 0x0

    return-object v0
.end method

.method public uknight_mem_set(I)Z
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 4977
    const/4 v0, 0x0

    return v0
.end method

.method public uknight_state_change_set(I)Z
    .locals 1
    .param p1, "eventCode"    # I

    .prologue
    .line 4924
    const/4 v0, 0x0

    return v0
.end method

.method public updateServiceLocation()V
    .locals 3

    .prologue
    .line 3843
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3847
    :goto_0
    return-void

    .line 3844
    :catch_0
    move-exception v0

    .line 3845
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#updateServiceLocation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
