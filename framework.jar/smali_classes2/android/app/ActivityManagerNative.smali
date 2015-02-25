.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 2457
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 118
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 67
    if-nez p0, :cond_1

    .line 68
    const/4 v0, 0x0

    .line 76
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 72
    .local v0, "in":Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroid/app/ActivityManagerProxy;

    .end local v0    # "in":Landroid/app/IActivityManager;
    invoke-direct {v0, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 13
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 103
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, p0

    move v12, p2

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 93
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 2
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "sourcePkg"    # Ljava/lang/String;

    .prologue
    .line 112
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 2454
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 258
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    move/from16 v0, p1

    sparse-switch v0, :sswitch_data_0

    .line 2450
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 127
    :sswitch_0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 129
    .local v147, "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 130
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 132
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 133
    .local v10, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 134
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 135
    .local v12, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 136
    .local v13, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 137
    .local v14, "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 139
    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_2
    move-object/from16 v6, p0

    .line 141
    invoke-virtual/range {v6 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v223

    .line 143
    .local v223, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    move-object/from16 v0, p3

    move/from16 v1, v223

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v6, 0x1

    goto :goto_0

    .line 137
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v223    # "result":I
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 139
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_1
    const/16 v16, 0x0

    goto :goto_2

    .line 150
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v147    # "b":Landroid/os/IBinder;
    :sswitch_1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 152
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 153
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 154
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 155
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 156
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 157
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 158
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 159
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 160
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 162
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 164
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "userId":I
    move-object/from16 v6, p0

    .line 165
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v223

    .line 167
    .restart local v223    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    move-object/from16 v0, p3

    move/from16 v1, v223

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 160
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v223    # "result":I
    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    .line 162
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_3
    const/16 v16, 0x0

    goto :goto_4

    .line 174
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v147    # "b":Landroid/os/IBinder;
    :sswitch_2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 176
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 177
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 178
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 179
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 180
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 181
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 182
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 183
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 184
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 186
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 188
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v6, p0

    .line 189
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v223

    .line 191
    .restart local v223    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    move-object/from16 v0, p3

    move/from16 v1, v223

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 184
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v223    # "result":I
    :cond_4
    const/4 v15, 0x0

    goto :goto_5

    .line 186
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    .line 198
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v147    # "b":Landroid/os/IBinder;
    :sswitch_3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 200
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 201
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 202
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 203
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 204
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 205
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 206
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 207
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 208
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 210
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 212
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v6, p0

    .line 213
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v223

    .line 215
    .local v223, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    const/4 v6, 0x0

    move-object/from16 v0, v223

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 217
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 208
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v223    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_6
    const/4 v15, 0x0

    goto :goto_7

    .line 210
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_7
    const/16 v16, 0x0

    goto :goto_8

    .line 222
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v147    # "b":Landroid/os/IBinder;
    :sswitch_4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 224
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 225
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 226
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 227
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 228
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 229
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 230
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 231
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 232
    .restart local v14    # "startFlags":I
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 233
    .local v27, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 235
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v28, v16

    move/from16 v29, v17

    .line 236
    invoke-virtual/range {v18 .. v29}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v223

    .line 238
    .local v223, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    move-object/from16 v0, p3

    move/from16 v1, v223

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 233
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v223    # "result":I
    :cond_8
    const/16 v16, 0x0

    goto :goto_9

    .line 245
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v27    # "config":Landroid/content/res/Configuration;
    .end local v147    # "b":Landroid/os/IBinder;
    :sswitch_5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 247
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 248
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/IntentSender;

    .line 249
    .local v9, "intent":Landroid/content/IntentSender;
    const/16 v31, 0x0

    .line 250
    .local v31, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 251
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "fillInIntent":Landroid/content/Intent;
    check-cast v31, Landroid/content/Intent;

    .line 253
    .restart local v31    # "fillInIntent":Landroid/content/Intent;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 254
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 255
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 256
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 257
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 258
    .local v36, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 259
    .local v37, "flagsValues":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_a
    move-object/from16 v28, p0

    move-object/from16 v29, v7

    move-object/from16 v30, v9

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    move/from16 v35, v13

    move-object/from16 v38, v16

    .line 261
    invoke-virtual/range {v28 .. v38}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v223

    .line 264
    .restart local v223    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    move-object/from16 v0, p3

    move/from16 v1, v223

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 259
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v223    # "result":I
    :cond_a
    const/16 v16, 0x0

    goto :goto_a

    .line 271
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/IntentSender;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v31    # "fillInIntent":Landroid/content/Intent;
    .end local v36    # "flagsMask":I
    .end local v37    # "flagsValues":I
    .end local v147    # "b":Landroid/os/IBinder;
    :sswitch_6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 273
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 274
    .local v40, "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 275
    .local v41, "callingUid":I
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 276
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 277
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v44

    .line 279
    .local v44, "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v45

    .line 281
    .local v45, "interactor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 282
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 284
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 286
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v38, p0

    move-object/from16 v39, v8

    move-object/from16 v42, v9

    move-object/from16 v43, v10

    move/from16 v46, v14

    move-object/from16 v47, v15

    move-object/from16 v48, v16

    move/from16 v49, v17

    .line 287
    invoke-virtual/range {v38 .. v49}, Landroid/app/ActivityManagerNative;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v223

    .line 289
    .restart local v223    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    move-object/from16 v0, p3

    move/from16 v1, v223

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 282
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v223    # "result":I
    :cond_b
    const/4 v15, 0x0

    goto :goto_b

    .line 284
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_c
    const/16 v16, 0x0

    goto :goto_c

    .line 296
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v40    # "callingPid":I
    .end local v41    # "callingUid":I
    .end local v44    # "session":Landroid/service/voice/IVoiceInteractionSession;
    .end local v45    # "interactor":Lcom/android/internal/app/IVoiceInteractor;
    :sswitch_7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v152

    .line 298
    .local v152, "callingActivity":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 299
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 301
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v223

    .line 302
    .local v223, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    if-eqz v223, :cond_e

    const/4 v6, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 299
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v223    # "result":Z
    :cond_d
    const/16 v16, 0x0

    goto :goto_d

    .line 303
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v223    # "result":Z
    :cond_e
    const/4 v6, 0x0

    goto :goto_e

    .line 309
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v152    # "callingActivity":Landroid/os/IBinder;
    .end local v223    # "result":Z
    :sswitch_8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v243

    .line 311
    .local v243, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_f

    const/16 v16, 0x0

    .line 312
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v243

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v223

    .line 313
    .local v223, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    move-object/from16 v0, p3

    move/from16 v1, v223

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 311
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v223    # "result":I
    :cond_f
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    goto :goto_f

    .line 319
    .end local v243    # "taskId":I
    :sswitch_9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 321
    .local v60, "token":Landroid/os/IBinder;
    const/16 v52, 0x0

    .line 322
    .local v52, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 323
    .local v51, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    .line 324
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    .end local v52    # "resultData":Landroid/content/Intent;
    check-cast v52, Landroid/content/Intent;

    .line 326
    .restart local v52    # "resultData":Landroid/content/Intent;
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    const/16 v169, 0x1

    .line 327
    .local v169, "finishTask":Z
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v51

    move-object/from16 v3, v52

    move/from16 v4, v169

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    move-result v224

    .line 328
    .local v224, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-eqz v224, :cond_12

    const/4 v6, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 326
    .end local v169    # "finishTask":Z
    .end local v224    # "res":Z
    :cond_11
    const/16 v169, 0x0

    goto :goto_10

    .line 329
    .restart local v169    # "finishTask":Z
    .restart local v224    # "res":Z
    :cond_12
    const/4 v6, 0x0

    goto :goto_11

    .line 334
    .end local v51    # "resultCode":I
    .end local v52    # "resultData":Landroid/content/Intent;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v169    # "finishTask":Z
    .end local v224    # "res":Z
    :sswitch_a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 336
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 337
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 338
    .restart local v13    # "requestCode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1, v12, v13}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 344
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 346
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v224

    .line 347
    .restart local v224    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v224, :cond_13

    const/4 v6, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 348
    :cond_13
    const/4 v6, 0x0

    goto :goto_12

    .line 353
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v224    # "res":Z
    :sswitch_c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v44

    .line 356
    .restart local v44    # "session":Landroid/service/voice/IVoiceInteractionSession;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 362
    .end local v44    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :sswitch_d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 364
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v224

    .line 365
    .restart local v224    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v224, :cond_14

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 366
    :cond_14
    const/4 v6, 0x0

    goto :goto_13

    .line 371
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v224    # "res":Z
    :sswitch_e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 373
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 379
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :sswitch_f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 381
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v224

    .line 382
    .restart local v224    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    if-eqz v224, :cond_15

    const/4 v6, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 383
    :cond_15
    const/4 v6, 0x0

    goto :goto_14

    .line 389
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v224    # "res":Z
    :sswitch_10
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 391
    .restart local v147    # "b":Landroid/os/IBinder;
    if-eqz v147, :cond_16

    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 393
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 394
    .local v20, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 395
    if-eqz v147, :cond_17

    invoke-static/range {v147 .. v147}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    .line 397
    .local v21, "rec":Landroid/content/IIntentReceiver;
    :goto_16
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/IntentFilter;

    .line 398
    .local v22, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 399
    .local v23, "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move/from16 v24, v17

    .line 400
    invoke-virtual/range {v18 .. v24}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 401
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    if-eqz v9, :cond_18

    .line 403
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 408
    :goto_17
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 391
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v22    # "filter":Landroid/content/IntentFilter;
    .end local v23    # "perm":Ljava/lang/String;
    :cond_16
    const/4 v7, 0x0

    goto :goto_15

    .line 395
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v20    # "packageName":Ljava/lang/String;
    :cond_17
    const/16 v21, 0x0

    goto :goto_16

    .line 406
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v17    # "userId":I
    .restart local v21    # "rec":Landroid/content/IIntentReceiver;
    .restart local v22    # "filter":Landroid/content/IntentFilter;
    .restart local v23    # "perm":Ljava/lang/String;
    :cond_18
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 413
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v22    # "filter":Landroid/content/IntentFilter;
    .end local v23    # "perm":Ljava/lang/String;
    .end local v147    # "b":Landroid/os/IBinder;
    :sswitch_11
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 415
    .restart local v147    # "b":Landroid/os/IBinder;
    if-nez v147, :cond_19

    .line 416
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 418
    :cond_19
    invoke-static/range {v147 .. v147}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    .line 419
    .restart local v21    # "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 426
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v147    # "b":Landroid/os/IBinder;
    :sswitch_12
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 428
    .restart local v147    # "b":Landroid/os/IBinder;
    if-eqz v147, :cond_1a

    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 430
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_18
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 431
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 432
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 433
    if-eqz v147, :cond_1b

    invoke-static/range {v147 .. v147}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v11

    .line 435
    .local v11, "resultTo":Landroid/content/IIntentReceiver;
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 436
    .restart local v51    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .line 437
    .local v52, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v53

    .line 438
    .local v53, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 439
    .restart local v23    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 440
    .local v55, "appOp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    const/16 v56, 0x1

    .line 441
    .local v56, "serialized":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v57, 0x1

    .line 442
    .local v57, "sticky":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v46, p0

    move-object/from16 v47, v7

    move-object/from16 v48, v9

    move-object/from16 v49, v10

    move-object/from16 v50, v11

    move-object/from16 v54, v23

    move/from16 v58, v17

    .line 443
    invoke-virtual/range {v46 .. v58}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I

    move-result v224

    .line 446
    .local v224, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    move-object/from16 v0, p3

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 428
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v17    # "userId":I
    .end local v23    # "perm":Ljava/lang/String;
    .end local v51    # "resultCode":I
    .end local v52    # "resultData":Ljava/lang/String;
    .end local v53    # "resultExtras":Landroid/os/Bundle;
    .end local v55    # "appOp":I
    .end local v56    # "serialized":Z
    .end local v57    # "sticky":Z
    .end local v224    # "res":I
    :cond_1a
    const/4 v7, 0x0

    goto :goto_18

    .line 433
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    :cond_1b
    const/4 v11, 0x0

    goto :goto_19

    .line 440
    .restart local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v23    # "perm":Ljava/lang/String;
    .restart local v51    # "resultCode":I
    .restart local v52    # "resultData":Ljava/lang/String;
    .restart local v53    # "resultExtras":Landroid/os/Bundle;
    .restart local v55    # "appOp":I
    :cond_1c
    const/16 v56, 0x0

    goto :goto_1a

    .line 441
    .restart local v56    # "serialized":Z
    :cond_1d
    const/16 v57, 0x0

    goto :goto_1b

    .line 453
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v23    # "perm":Ljava/lang/String;
    .end local v51    # "resultCode":I
    .end local v52    # "resultData":Ljava/lang/String;
    .end local v53    # "resultExtras":Landroid/os/Bundle;
    .end local v55    # "appOp":I
    .end local v56    # "serialized":Z
    .end local v147    # "b":Landroid/os/IBinder;
    :sswitch_13
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 455
    .restart local v147    # "b":Landroid/os/IBinder;
    if-eqz v147, :cond_1e

    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 456
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_1c
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 457
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 458
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v9, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 455
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    :cond_1e
    const/4 v7, 0x0

    goto :goto_1c

    .line 464
    .end local v147    # "b":Landroid/os/IBinder;
    :sswitch_14
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 466
    .local v50, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 467
    .restart local v51    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .line 468
    .restart local v52    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v53

    .line 469
    .restart local v53    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_20

    const/16 v54, 0x1

    .line 470
    .local v54, "resultAbort":Z
    :goto_1d
    if-eqz v50, :cond_1f

    move-object/from16 v49, p0

    .line 471
    invoke-virtual/range {v49 .. v54}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 473
    :cond_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 469
    .end local v54    # "resultAbort":Z
    :cond_20
    const/16 v54, 0x0

    goto :goto_1d

    .line 478
    .end local v50    # "who":Landroid/os/IBinder;
    .end local v51    # "resultCode":I
    .end local v52    # "resultData":Ljava/lang/String;
    .end local v53    # "resultExtras":Landroid/os/Bundle;
    :sswitch_15
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 481
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    if-eqz v7, :cond_21

    .line 482
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 484
    :cond_21
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 489
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :sswitch_16
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 491
    .restart local v60    # "token":Landroid/os/IBinder;
    const/16 v27, 0x0

    .line 492
    .restart local v27    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    .line 493
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "config":Landroid/content/res/Configuration;
    check-cast v27, Landroid/content/res/Configuration;

    .line 495
    .restart local v27    # "config":Landroid/content/res/Configuration;
    :cond_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_24

    const/16 v236, 0x1

    .line 496
    .local v236, "stopProfiling":Z
    :goto_1e
    if-eqz v60, :cond_23

    .line 497
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v27

    move/from16 v3, v236

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 499
    :cond_23
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 495
    .end local v236    # "stopProfiling":Z
    :cond_24
    const/16 v236, 0x0

    goto :goto_1e

    .line 504
    .end local v27    # "config":Landroid/content/res/Configuration;
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_17
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 506
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    .line 507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 512
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_18
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 514
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 515
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 520
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_19
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 522
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v194

    .line 523
    .local v194, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v208

    .line 524
    .local v208, "persistentState":Landroid/os/PersistableBundle;
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v160

    check-cast v160, Ljava/lang/CharSequence;

    .line 525
    .local v160, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v194

    move-object/from16 v3, v208

    move-object/from16 v4, v160

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 531
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v160    # "description":Ljava/lang/CharSequence;
    .end local v194    # "map":Landroid/os/Bundle;
    .end local v208    # "persistentState":Landroid/os/PersistableBundle;
    :sswitch_1a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 533
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 539
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_1b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 541
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 547
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_1c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 549
    .restart local v60    # "token":Landroid/os/IBinder;
    if-eqz v60, :cond_25

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v224

    .line 550
    .local v224, "res":Ljava/lang/String;
    :goto_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    move-object/from16 v0, p3

    move-object/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 549
    .end local v224    # "res":Ljava/lang/String;
    :cond_25
    const/16 v224, 0x0

    goto :goto_1f

    .line 556
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_1d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 558
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v154

    .line 559
    .local v154, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    move-object/from16 v0, v154

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 561
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 565
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v154    # "cn":Landroid/content/ComponentName;
    :sswitch_1e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 567
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/ActivityManagerNative;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v192

    .line 568
    .local v192, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    if-eqz v192, :cond_26

    invoke-interface/range {v192 .. v192}, Ljava/util/List;->size()I

    move-result v137

    .line 570
    .local v137, "N":I
    :goto_20
    move-object/from16 v0, p3

    move/from16 v1, v137

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    const/16 v172, 0x0

    .local v172, "i":I
    :goto_21
    move/from16 v0, v172

    move/from16 v1, v137

    if-ge v0, v1, :cond_27

    .line 573
    move-object/from16 v0, v192

    move/from16 v1, v172

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v242

    check-cast v242, Landroid/app/IAppTask;

    .line 574
    .local v242, "task":Landroid/app/IAppTask;
    invoke-interface/range {v242 .. v242}, Landroid/app/IAppTask;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 572
    add-int/lit8 v172, v172, 0x1

    goto :goto_21

    .line 569
    .end local v137    # "N":I
    .end local v172    # "i":I
    .end local v242    # "task":Landroid/app/IAppTask;
    :cond_26
    const/16 v137, -0x1

    goto :goto_20

    .line 576
    .restart local v137    # "N":I
    .restart local v172    # "i":I
    :cond_27
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 580
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v137    # "N":I
    .end local v172    # "i":I
    .end local v192    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    :sswitch_1f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v140

    .line 582
    .local v140, "activityToken":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 583
    .restart local v9    # "intent":Landroid/content/Intent;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v159

    check-cast v159, Landroid/app/ActivityManager$TaskDescription;

    .line 585
    .local v159, "descr":Landroid/app/ActivityManager$TaskDescription;
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v245

    check-cast v245, Landroid/graphics/Bitmap;

    .line 586
    .local v245, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    move-object/from16 v2, v159

    move-object/from16 v3, v245

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/app/ActivityManagerNative;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v224

    .line 587
    .local v224, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    move-object/from16 v0, p3

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 593
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v140    # "activityToken":Landroid/os/IBinder;
    .end local v159    # "descr":Landroid/app/ActivityManager$TaskDescription;
    .end local v224    # "res":I
    .end local v245    # "thumbnail":Landroid/graphics/Bitmap;
    :sswitch_20
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v230

    .line 595
    .local v230, "size":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    const/4 v6, 0x0

    move-object/from16 v0, v230

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 597
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 601
    .end local v230    # "size":Landroid/graphics/Point;
    :sswitch_21
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v196

    .line 603
    .local v196, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 604
    .local v70, "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v196

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTasks(II)Ljava/util/List;

    move-result-object v190

    .line 605
    .local v190, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    if-eqz v190, :cond_28

    invoke-interface/range {v190 .. v190}, Ljava/util/List;->size()I

    move-result v137

    .line 607
    .restart local v137    # "N":I
    :goto_22
    move-object/from16 v0, p3

    move/from16 v1, v137

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    const/16 v172, 0x0

    .restart local v172    # "i":I
    :goto_23
    move/from16 v0, v172

    move/from16 v1, v137

    if-ge v0, v1, :cond_29

    .line 610
    move-object/from16 v0, v190

    move/from16 v1, v172

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v176

    check-cast v176, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 611
    .local v176, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v176

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 609
    add-int/lit8 v172, v172, 0x1

    goto :goto_23

    .line 606
    .end local v137    # "N":I
    .end local v172    # "i":I
    .end local v176    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_28
    const/16 v137, -0x1

    goto :goto_22

    .line 613
    .restart local v137    # "N":I
    .restart local v172    # "i":I
    :cond_29
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 617
    .end local v70    # "fl":I
    .end local v137    # "N":I
    .end local v172    # "i":I
    .end local v190    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v196    # "maxNum":I
    :sswitch_22
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v196

    .line 619
    .restart local v196    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 620
    .restart local v70    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 621
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v196

    move/from16 v2, v70

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Ljava/util/List;

    move-result-object v187

    .line 623
    .local v187, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    move-object/from16 v0, p3

    move-object/from16 v1, v187

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 625
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 629
    .end local v17    # "userId":I
    .end local v70    # "fl":I
    .end local v187    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v196    # "maxNum":I
    :sswitch_23
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 631
    .local v61, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v244

    .line 632
    .local v244, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    if-eqz v244, :cond_2a

    .line 634
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    const/4 v6, 0x1

    move-object/from16 v0, v244

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskThumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 639
    :goto_24
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 637
    :cond_2a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 644
    .end local v61    # "id":I
    .end local v244    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :sswitch_24
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 646
    .restart local v61    # "id":I
    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskTopIsSecretMode(I)Z

    move-result v223

    .line 647
    .local v223, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    if-eqz v223, :cond_2b

    const/4 v6, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 648
    :cond_2b
    const/4 v6, 0x0

    goto :goto_25

    .line 654
    .end local v61    # "id":I
    .end local v223    # "result":Z
    :sswitch_25
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v196

    .line 656
    .restart local v196    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 657
    .restart local v70    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v196

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v189

    .line 658
    .local v189, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    if-eqz v189, :cond_2c

    invoke-interface/range {v189 .. v189}, Ljava/util/List;->size()I

    move-result v137

    .line 660
    .restart local v137    # "N":I
    :goto_26
    move-object/from16 v0, p3

    move/from16 v1, v137

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/16 v172, 0x0

    .restart local v172    # "i":I
    :goto_27
    move/from16 v0, v172

    move/from16 v1, v137

    if-ge v0, v1, :cond_2d

    .line 663
    move-object/from16 v0, v189

    move/from16 v1, v172

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v176

    check-cast v176, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 664
    .local v176, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v176

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 662
    add-int/lit8 v172, v172, 0x1

    goto :goto_27

    .line 659
    .end local v137    # "N":I
    .end local v172    # "i":I
    .end local v176    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2c
    const/16 v137, -0x1

    goto :goto_26

    .line 666
    .restart local v137    # "N":I
    .restart local v172    # "i":I
    :cond_2d
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 670
    .end local v70    # "fl":I
    .end local v137    # "N":I
    .end local v172    # "i":I
    .end local v189    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v196    # "maxNum":I
    :sswitch_26
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v186

    .line 672
    .local v186, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    move-object/from16 v0, p3

    move-object/from16 v1, v186

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 674
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 678
    .end local v186    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :sswitch_27
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v188

    .line 680
    .local v188, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    move-object/from16 v0, p3

    move-object/from16 v1, v188

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 682
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 686
    .end local v188    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :sswitch_28
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v193

    .line 688
    .local v193, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    move-object/from16 v0, p3

    move-object/from16 v1, v193

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 690
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 694
    .end local v193    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_29
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v242

    .line 696
    .local v242, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 697
    .restart local v70    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 699
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_28
    move-object/from16 v0, p0

    move/from16 v1, v242

    move/from16 v2, v70

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 697
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_2e
    const/16 v16, 0x0

    goto :goto_28

    .line 705
    .end local v70    # "fl":I
    .end local v242    # "task":I
    :sswitch_2a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v242

    .line 707
    .restart local v242    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v242

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 708
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 713
    .end local v242    # "task":I
    :sswitch_2b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 715
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f

    const/16 v201, 0x1

    .line 716
    .local v201, "nonRoot":Z
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v201

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v224

    .line 717
    .local v224, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    if-eqz v224, :cond_30

    const/4 v6, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 715
    .end local v201    # "nonRoot":Z
    .end local v224    # "res":Z
    :cond_2f
    const/16 v201, 0x0

    goto :goto_29

    .line 718
    .restart local v201    # "nonRoot":Z
    .restart local v224    # "res":Z
    :cond_30
    const/4 v6, 0x0

    goto :goto_2a

    .line 723
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v201    # "nonRoot":Z
    .end local v224    # "res":Z
    :sswitch_2c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v242

    .line 725
    .restart local v242    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v242

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 731
    .end local v242    # "task":I
    :sswitch_2d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v243

    .line 733
    .restart local v243    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v234

    .line 734
    .local v234, "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    const/16 v246, 0x1

    .line 735
    .local v246, "toTop":Z
    :goto_2b
    move-object/from16 v0, p0

    move/from16 v1, v243

    move/from16 v2, v234

    move/from16 v3, v246

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToStack(IIZ)V

    .line 736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 734
    .end local v246    # "toTop":Z
    :cond_31
    const/16 v246, 0x0

    goto :goto_2b

    .line 741
    .end local v234    # "stackId":I
    .end local v243    # "taskId":I
    :sswitch_2e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v234

    .line 743
    .restart local v234    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    move/16 v256, v0

    .line 744
    .local v256, "weight":F
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v218

    check-cast v218, Landroid/graphics/Rect;

    .line 745
    .local v218, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v234

    move-object/from16 v2, v218

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeStack(ILandroid/graphics/Rect;)V

    .line 746
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 751
    .end local v218    # "r":Landroid/graphics/Rect;
    .end local v234    # "stackId":I
    .end local v256    # "weight":F
    :sswitch_2f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAllStackInfos()Ljava/util/List;

    move-result-object v191

    .line 753
    .local v191, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    move-object/from16 v0, p3

    move-object/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 755
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 759
    .end local v191    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :sswitch_30
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v234

    .line 761
    .restart local v234    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v176

    .line 762
    .local v176, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    if-eqz v176, :cond_32

    .line 764
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    const/4 v6, 0x0

    move-object/from16 v0, v176

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 769
    :goto_2c
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 767
    :cond_32
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    .line 773
    .end local v176    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v234    # "stackId":I
    :sswitch_31
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v243

    .line 775
    .restart local v243    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v243

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInHomeStack(I)Z

    move-result v181

    .line 776
    .local v181, "isInHomeStack":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    if-eqz v181, :cond_33

    const/4 v6, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 777
    :cond_33
    const/4 v6, 0x0

    goto :goto_2d

    .line 782
    .end local v181    # "isInHomeStack":Z
    .end local v243    # "taskId":I
    :sswitch_32
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v234

    .line 784
    .restart local v234    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedStack(I)V

    .line 785
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 791
    .end local v234    # "stackId":I
    :sswitch_33
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v234

    .line 793
    .restart local v234    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_34

    const/16 v240, 0x1

    .line 794
    .local v240, "tapOutSide":Z
    :goto_2e
    move-object/from16 v0, p0

    move/from16 v1, v234

    move/from16 v2, v240

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setFocusedStack(IZ)V

    .line 795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 793
    .end local v240    # "tapOutSide":Z
    :cond_34
    const/16 v240, 0x0

    goto :goto_2e

    .line 801
    .end local v234    # "stackId":I
    :sswitch_34
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 803
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    const/16 v203, 0x1

    .line 804
    .local v203, "onlyRoot":Z
    :goto_2f
    if-eqz v60, :cond_36

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v203

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v224

    .line 806
    .local v224, "res":I
    :goto_30
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    move-object/from16 v0, p3

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 803
    .end local v203    # "onlyRoot":Z
    .end local v224    # "res":I
    :cond_35
    const/16 v203, 0x0

    goto :goto_2f

    .line 804
    .restart local v203    # "onlyRoot":Z
    :cond_36
    const/16 v224, -0x1

    goto :goto_30

    .line 812
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v203    # "onlyRoot":Z
    :sswitch_35
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 814
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 815
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 816
    .local v94, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 817
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_37

    const/16 v233, 0x1

    .line 818
    .local v233, "stable":Z
    :goto_31
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v17

    move/from16 v3, v233

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v158

    .line 819
    .local v158, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    if-eqz v158, :cond_38

    .line 821
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    const/4 v6, 0x0

    move-object/from16 v0, v158

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 826
    :goto_32
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 817
    .end local v158    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v233    # "stable":Z
    :cond_37
    const/16 v233, 0x0

    goto :goto_31

    .line 824
    .restart local v158    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v233    # "stable":Z
    :cond_38
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 830
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v94    # "name":Ljava/lang/String;
    .end local v147    # "b":Landroid/os/IBinder;
    .end local v158    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v233    # "stable":Z
    :sswitch_36
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 832
    .restart local v94    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 833
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 834
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v17

    move-object/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v158

    .line 835
    .restart local v158    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    if-eqz v158, :cond_39

    .line 837
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    const/4 v6, 0x0

    move-object/from16 v0, v158

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 842
    :goto_33
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 840
    :cond_39
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    .line 846
    .end local v17    # "userId":I
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v94    # "name":Ljava/lang/String;
    .end local v158    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :sswitch_37
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 848
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 849
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v216

    .line 851
    .local v216, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v216

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 852
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 857
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v147    # "b":Landroid/os/IBinder;
    .end local v216    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :sswitch_38
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 859
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v233

    .line 860
    .local v233, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v247

    .line 861
    .local v247, "unstable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v147

    move/from16 v2, v233

    move/from16 v3, v247

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v224

    .line 862
    .local v224, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    if-eqz v224, :cond_3a

    const/4 v6, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 863
    :cond_3a
    const/4 v6, 0x0

    goto :goto_34

    .line 868
    .end local v147    # "b":Landroid/os/IBinder;
    .end local v224    # "res":Z
    .end local v233    # "stable":I
    .end local v247    # "unstable":I
    :sswitch_39
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 870
    .restart local v147    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 871
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 876
    .end local v147    # "b":Landroid/os/IBinder;
    :sswitch_3a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 878
    .restart local v147    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 879
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 884
    .end local v147    # "b":Landroid/os/IBinder;
    :sswitch_3b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 886
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v233, 0x1

    .line 887
    .local v233, "stable":Z
    :goto_35
    move-object/from16 v0, p0

    move-object/from16 v1, v147

    move/from16 v2, v233

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 888
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 886
    .end local v233    # "stable":Z
    :cond_3b
    const/16 v233, 0x0

    goto :goto_35

    .line 893
    .end local v147    # "b":Landroid/os/IBinder;
    :sswitch_3c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 895
    .restart local v94    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 896
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 897
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 902
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v94    # "name":Ljava/lang/String;
    :sswitch_3d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v155

    check-cast v155, Landroid/content/ComponentName;

    .line 904
    .local v155, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v155

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v210

    .line 905
    .local v210, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    move-object/from16 v0, v210

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 907
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 911
    .end local v155    # "comp":Landroid/content/ComponentName;
    .end local v210    # "pi":Landroid/app/PendingIntent;
    :sswitch_3e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 913
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 914
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/content/Intent;

    .line 915
    .local v67, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 916
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 917
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v154

    .line 918
    .restart local v154    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    move-object/from16 v0, v154

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 920
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 924
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v67    # "service":Landroid/content/Intent;
    .end local v147    # "b":Landroid/os/IBinder;
    .end local v154    # "cn":Landroid/content/ComponentName;
    :sswitch_3f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 926
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 927
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/content/Intent;

    .line 928
    .restart local v67    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 929
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 930
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v224

    .line 931
    .local v224, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    move-object/from16 v0, p3

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 937
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v67    # "service":Landroid/content/Intent;
    .end local v147    # "b":Landroid/os/IBinder;
    .end local v224    # "res":I
    :sswitch_40
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v59

    .line 939
    .local v59, "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 940
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v235

    .line 941
    .local v235, "startId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    move/from16 v3, v235

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v224

    .line 942
    .local v224, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    if-eqz v224, :cond_3c

    const/4 v6, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 943
    :cond_3c
    const/4 v6, 0x0

    goto :goto_36

    .line 948
    .end local v59    # "className":Landroid/content/ComponentName;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v224    # "res":Z
    .end local v235    # "startId":I
    :sswitch_41
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v59

    .line 950
    .restart local v59    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 951
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 952
    .restart local v61    # "id":I
    const/16 v62, 0x0

    .line 953
    .local v62, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3d

    .line 954
    sget-object v6, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v62

    .end local v62    # "notification":Landroid/app/Notification;
    check-cast v62, Landroid/app/Notification;

    .line 956
    .restart local v62    # "notification":Landroid/app/Notification;
    :cond_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    const/16 v63, 0x1

    .local v63, "removeNotification":Z
    :goto_37
    move-object/from16 v58, p0

    .line 957
    invoke-virtual/range {v58 .. v63}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 958
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 956
    .end local v63    # "removeNotification":Z
    :cond_3e
    const/16 v63, 0x0

    goto :goto_37

    .line 963
    .end local v59    # "className":Landroid/content/ComponentName;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v61    # "id":I
    .end local v62    # "notification":Landroid/app/Notification;
    :sswitch_42
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 965
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 966
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 967
    .restart local v60    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/content/Intent;

    .line 968
    .restart local v67    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 969
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 971
    .restart local v70    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 972
    .restart local v17    # "userId":I
    invoke-static/range {v147 .. v147}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v69

    .local v69, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v64, p0

    move-object/from16 v65, v7

    move-object/from16 v66, v60

    move-object/from16 v68, v10

    move/from16 v71, v17

    .line 973
    invoke-virtual/range {v64 .. v71}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result v224

    .line 974
    .local v224, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    move-object/from16 v0, p3

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 976
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 980
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v67    # "service":Landroid/content/Intent;
    .end local v69    # "conn":Landroid/app/IServiceConnection;
    .end local v70    # "fl":I
    .end local v147    # "b":Landroid/os/IBinder;
    .end local v224    # "res":I
    :sswitch_43
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 982
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v69

    .line 983
    .restart local v69    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v224

    .line 984
    .local v224, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    if-eqz v224, :cond_3f

    const/4 v6, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 986
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 985
    :cond_3f
    const/4 v6, 0x0

    goto :goto_38

    .line 990
    .end local v69    # "conn":Landroid/app/IServiceConnection;
    .end local v147    # "b":Landroid/os/IBinder;
    .end local v224    # "res":Z
    :sswitch_44
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 992
    .restart local v60    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 993
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v67

    .line 994
    .local v67, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 995
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1000
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v67    # "service":Landroid/os/IBinder;
    :sswitch_45
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1002
    .restart local v60    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1003
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_40

    const/16 v162, 0x1

    .line 1004
    .local v162, "doRebind":Z
    :goto_39
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v162

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 1005
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1003
    .end local v162    # "doRebind":Z
    :cond_40
    const/16 v162, 0x0

    goto :goto_39

    .line 1010
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_46
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1012
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 1013
    .local v81, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v235

    .line 1014
    .restart local v235    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v224

    .line 1015
    .local v224, "res":I
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v81

    move/from16 v3, v235

    move/from16 v4, v224

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 1016
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1021
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v81    # "type":I
    .end local v224    # "res":I
    .end local v235    # "startId":I
    :sswitch_47
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v59

    .line 1023
    .restart local v59    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 1024
    .local v73, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 1025
    .restart local v70    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v75

    .line 1026
    .local v75, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 1027
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v76

    .line 1028
    .local v76, "w":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 1029
    invoke-static/range {v147 .. v147}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v77

    .line 1030
    .local v77, "c":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1031
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v79

    .local v79, "abiOverride":Ljava/lang/String;
    move-object/from16 v71, p0

    move-object/from16 v72, v59

    move/from16 v74, v70

    move/from16 v78, v17

    .line 1032
    invoke-virtual/range {v71 .. v79}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v224

    .line 1034
    .local v224, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    if-eqz v224, :cond_41

    const/4 v6, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1035
    :cond_41
    const/4 v6, 0x0

    goto :goto_3a

    .line 1041
    .end local v17    # "userId":I
    .end local v59    # "className":Landroid/content/ComponentName;
    .end local v70    # "fl":I
    .end local v73    # "profileFile":Ljava/lang/String;
    .end local v75    # "arguments":Landroid/os/Bundle;
    .end local v76    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v77    # "c":Landroid/app/IUiAutomationConnection;
    .end local v79    # "abiOverride":Ljava/lang/String;
    .end local v147    # "b":Landroid/os/IBinder;
    .end local v224    # "res":Z
    :sswitch_48
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1042
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 1043
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1044
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 1045
    .restart local v51    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v226

    .line 1046
    .local v226, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v51

    move-object/from16 v2, v226

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 1047
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1052
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v51    # "resultCode":I
    .end local v147    # "b":Landroid/os/IBinder;
    .end local v226    # "results":Landroid/os/Bundle;
    :sswitch_49
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1053
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    .line 1054
    .restart local v27    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    const/4 v6, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1056
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1060
    .end local v27    # "config":Landroid/content/res/Configuration;
    :sswitch_4a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 1062
    .restart local v27    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1063
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1069
    .end local v27    # "config":Landroid/content/res/Configuration;
    :sswitch_4b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1070
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_42

    const/16 v251, 0x0

    .line 1071
    .local v251, "value":Z
    :goto_3b
    move-object/from16 v0, p0

    move/from16 v1, v251

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->multiWindowSettingChanged(Z)V

    .line 1072
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1070
    .end local v251    # "value":Z
    :cond_42
    const/16 v251, 0x1

    goto :goto_3b

    .line 1077
    :sswitch_4c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1079
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyMinimizeMultiWindow(Landroid/os/IBinder;)V

    .line 1080
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1086
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_4d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1088
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v222

    .line 1089
    .local v222, "requestedOrientation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v222

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 1090
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1095
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v222    # "requestedOrientation":I
    :sswitch_4e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1097
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v220

    .line 1098
    .local v220, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    move-object/from16 v0, p3

    move/from16 v1, v220

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1100
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1104
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v220    # "req":I
    :sswitch_4f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1106
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v154

    .line 1107
    .restart local v154    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    move-object/from16 v0, v154

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1109
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1113
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v154    # "cn":Landroid/content/ComponentName;
    :sswitch_50
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1115
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1117
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1121
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_51
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1123
    .local v98, "pid":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1125
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1129
    .end local v98    # "pid":I
    :sswitch_52
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 1131
    .restart local v81    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1132
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1133
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1134
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1137
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    .line 1138
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v86

    check-cast v86, [Landroid/content/Intent;

    .line 1139
    .local v86, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v87

    .line 1144
    .local v87, "requestResolvedTypes":[Ljava/lang/String;
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 1145
    .restart local v70    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_44

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 1147
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v80, p0

    move-object/from16 v82, v20

    move-object/from16 v83, v60

    move-object/from16 v84, v12

    move/from16 v85, v13

    move/from16 v88, v70

    move-object/from16 v89, v16

    move/from16 v90, v17

    .line 1148
    invoke-virtual/range {v80 .. v90}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v224

    .line 1151
    .local v224, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    if-eqz v224, :cond_45

    invoke-interface/range {v224 .. v224}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1153
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1141
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v70    # "fl":I
    .end local v86    # "requestIntents":[Landroid/content/Intent;
    .end local v87    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v224    # "res":Landroid/content/IIntentSender;
    :cond_43
    const/16 v86, 0x0

    .line 1142
    .restart local v86    # "requestIntents":[Landroid/content/Intent;
    const/16 v87, 0x0

    .restart local v87    # "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_3c

    .line 1145
    .restart local v70    # "fl":I
    :cond_44
    const/16 v16, 0x0

    goto :goto_3d

    .line 1152
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    .restart local v224    # "res":Landroid/content/IIntentSender;
    :cond_45
    const/4 v6, 0x0

    goto :goto_3e

    .line 1157
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v70    # "fl":I
    .end local v81    # "type":I
    .end local v86    # "requestIntents":[Landroid/content/Intent;
    .end local v87    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v224    # "res":Landroid/content/IIntentSender;
    :sswitch_53
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v218

    .line 1160
    .local v218, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v218

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 1161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1166
    .end local v218    # "r":Landroid/content/IIntentSender;
    :sswitch_54
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v218

    .line 1169
    .restart local v218    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v218

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v224

    .line 1170
    .local v224, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    move-object/from16 v0, p3

    move-object/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1172
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1176
    .end local v218    # "r":Landroid/content/IIntentSender;
    .end local v224    # "res":Ljava/lang/String;
    :sswitch_55
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v218

    .line 1179
    .restart local v218    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v218

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v224

    .line 1180
    .local v224, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    move-object/from16 v0, p3

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1187
    .end local v218    # "r":Landroid/content/IIntentSender;
    .end local v224    # "res":I
    :sswitch_56
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v218

    .line 1190
    .restart local v218    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v218

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getKidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v224

    .line 1191
    .restart local v224    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    move-object/from16 v0, p3

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1198
    .end local v218    # "r":Landroid/content/IIntentSender;
    .end local v224    # "res":I
    :sswitch_57
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1200
    .restart local v40    # "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1201
    .restart local v41    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1202
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    const/16 v92, 0x1

    .line 1203
    .local v92, "allowAll":Z
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_47

    const/16 v93, 0x1

    .line 1204
    .local v93, "requireFull":Z
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1205
    .restart local v94    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v95

    .local v95, "callerPackage":Ljava/lang/String;
    move-object/from16 v88, p0

    move/from16 v89, v40

    move/from16 v90, v41

    move/from16 v91, v17

    .line 1206
    invoke-virtual/range {v88 .. v95}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v224

    .line 1208
    .restart local v224    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    move-object/from16 v0, p3

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1202
    .end local v92    # "allowAll":Z
    .end local v93    # "requireFull":Z
    .end local v94    # "name":Ljava/lang/String;
    .end local v95    # "callerPackage":Ljava/lang/String;
    .end local v224    # "res":I
    :cond_46
    const/16 v92, 0x0

    goto :goto_3f

    .line 1203
    .restart local v92    # "allowAll":Z
    :cond_47
    const/16 v93, 0x0

    goto :goto_40

    .line 1214
    .end local v17    # "userId":I
    .end local v40    # "callingPid":I
    .end local v41    # "callingUid":I
    .end local v92    # "allowAll":Z
    :sswitch_58
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v195

    .line 1216
    .local v195, "max":I
    move-object/from16 v0, p0

    move/from16 v1, v195

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 1217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1222
    .end local v195    # "max":I
    :sswitch_59
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v185

    .line 1224
    .local v185, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    move-object/from16 v0, p3

    move/from16 v1, v185

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1230
    .end local v185    # "limit":I
    :sswitch_5a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1232
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1233
    .restart local v98    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    const/16 v180, 0x1

    .line 1234
    .local v180, "isForeground":Z
    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v98

    move/from16 v3, v180

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 1235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1233
    .end local v180    # "isForeground":Z
    :cond_48
    const/16 v180, 0x0

    goto :goto_41

    .line 1240
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v98    # "pid":I
    :sswitch_5b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1242
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1243
    .restart local v98    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_49

    const/16 v180, 0x1

    .line 1244
    .restart local v180    # "isForeground":Z
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    const/16 v179, 0x1

    .line 1245
    .local v179, "isCalledByNotificationManagerService":Z
    :goto_43
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v98

    move/from16 v3, v180

    move/from16 v4, v179

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZZ)V

    .line 1246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1243
    .end local v179    # "isCalledByNotificationManagerService":Z
    .end local v180    # "isForeground":Z
    :cond_49
    const/16 v180, 0x0

    goto :goto_42

    .line 1244
    .restart local v180    # "isForeground":Z
    :cond_4a
    const/16 v179, 0x0

    goto :goto_43

    .line 1251
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v98    # "pid":I
    .end local v180    # "isForeground":Z
    :sswitch_5c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1253
    .restart local v23    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1254
    .restart local v98    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1255
    .local v99, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v98

    move/from16 v3, v99

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v224

    .line 1256
    .restart local v224    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    move-object/from16 v0, p3

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1258
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1262
    .end local v23    # "perm":Ljava/lang/String;
    .end local v98    # "pid":I
    .end local v99    # "uid":I
    .end local v224    # "res":I
    :sswitch_5d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1263
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1264
    .local v97, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1265
    .restart local v98    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1266
    .restart local v99    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1267
    .local v100, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v96, p0

    move/from16 v101, v17

    .line 1268
    invoke-virtual/range {v96 .. v101}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;IIII)I

    move-result v224

    .line 1269
    .restart local v224    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    move-object/from16 v0, p3

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1271
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1275
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "pid":I
    .end local v99    # "uid":I
    .end local v100    # "mode":I
    .end local v224    # "res":I
    :sswitch_5e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1277
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v202

    .line 1279
    .local v202, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1280
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v202

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v224

    .line 1281
    .local v224, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    if-eqz v224, :cond_4b

    const/4 v6, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1283
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1282
    :cond_4b
    const/4 v6, 0x0

    goto :goto_44

    .line 1287
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v202    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v224    # "res":Z
    :sswitch_5f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 1289
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1290
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v103

    .line 1291
    .local v103, "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1292
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1293
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v101, p0

    move-object/from16 v102, v7

    move-object/from16 v104, v97

    move/from16 v105, v100

    move/from16 v106, v17

    .line 1294
    invoke-virtual/range {v101 .. v106}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 1295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1300
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    .end local v103    # "targetPkg":Ljava/lang/String;
    .end local v147    # "b":Landroid/os/IBinder;
    :sswitch_60
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 1302
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1303
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1304
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1305
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1306
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v100

    move/from16 v3, v17

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 1307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1312
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    .end local v147    # "b":Landroid/os/IBinder;
    :sswitch_61
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1314
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1315
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1316
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v100

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->takePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1322
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    :sswitch_62
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1323
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1324
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1325
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1326
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v100

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->releasePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1332
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    :sswitch_63
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1334
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4c

    const/16 v175, 0x1

    .line 1335
    .local v175, "incoming":Z
    :goto_45
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v175

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v207

    .line 1337
    .local v207, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    const/4 v6, 0x1

    move-object/from16 v0, v207

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1339
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1334
    .end local v175    # "incoming":Z
    .end local v207    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_4c
    const/16 v175, 0x0

    goto :goto_45

    .line 1343
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_64
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 1345
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1346
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    const/16 v254, 0x1

    .line 1347
    .local v254, "waiting":Z
    :goto_46
    move-object/from16 v0, p0

    move/from16 v1, v254

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1349
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1346
    .end local v254    # "waiting":Z
    :cond_4d
    const/16 v254, 0x0

    goto :goto_46

    .line 1353
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v147    # "b":Landroid/os/IBinder;
    :sswitch_65
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1354
    new-instance v198, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v198 .. v198}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1355
    .local v198, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v198

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    const/4 v6, 0x0

    move-object/from16 v0, v198

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1358
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1362
    .end local v198    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :sswitch_66
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1363
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1365
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1369
    :sswitch_67
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v97

    .line 1371
    .restart local v97    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v209

    .line 1372
    .local v209, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    if-eqz v209, :cond_4e

    .line 1374
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1375
    const/4 v6, 0x1

    move-object/from16 v0, v209

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1379
    :goto_47
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1377
    :cond_4e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_47

    .line 1383
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v209    # "pfd":Landroid/os/ParcelFileDescriptor;
    :sswitch_68
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4f

    const/4 v6, 0x1

    :goto_48
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->setLockScreenShown(Z)V

    .line 1385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1386
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1384
    :cond_4f
    const/4 v6, 0x0

    goto :goto_48

    .line 1390
    :sswitch_69
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v213

    .line 1392
    .local v213, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    const/4 v0, 0x1

    move/16 v257, v0

    .line 1393
    .local v257, "wfd":Z
    :goto_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_51

    const/16 v206, 0x1

    .line 1394
    .local v206, "per":Z
    :goto_4a
    move-object/from16 v0, p0

    move-object/from16 v1, v213

    move/from16 v2, v257

    move/from16 v3, v206

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1396
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1392
    .end local v206    # "per":Z
    .end local v257    # "wfd":Z
    :cond_50
    const/4 v0, 0x0

    move/16 v257, v0

    goto :goto_49

    .line 1393
    .restart local v257    # "wfd":Z
    :cond_51
    const/16 v206, 0x0

    goto :goto_4a

    .line 1400
    .end local v213    # "pn":Ljava/lang/String;
    .end local v257    # "wfd":Z
    :sswitch_6a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_52

    const/16 v164, 0x1

    .line 1402
    .local v164, "enabled":Z
    :goto_4b
    move-object/from16 v0, p0

    move/from16 v1, v164

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1404
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1401
    .end local v164    # "enabled":Z
    :cond_52
    const/16 v164, 0x0

    goto :goto_4b

    .line 1408
    :sswitch_6b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v255

    .line 1411
    .local v255, "watcher":Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v255

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1413
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1417
    .end local v255    # "watcher":Landroid/app/IActivityController;
    :sswitch_6c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1418
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1420
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1424
    :sswitch_6d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v178

    .line 1427
    .local v178, "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v232

    .line 1428
    .local v232, "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v231

    .line 1429
    .local v231, "sourcePkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v178

    move/from16 v2, v232

    move-object/from16 v3, v231

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1431
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1435
    .end local v178    # "is":Landroid/content/IIntentSender;
    .end local v231    # "sourcePkg":Ljava/lang/String;
    .end local v232    # "sourceUid":I
    :sswitch_6e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v211

    .line 1437
    .local v211, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v219

    .line 1438
    .local v219, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_53

    const/16 v228, 0x1

    .line 1439
    .local v228, "secure":Z
    :goto_4c
    move-object/from16 v0, p0

    move-object/from16 v1, v211

    move-object/from16 v2, v219

    move/from16 v3, v228

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v224

    .line 1440
    .restart local v224    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    if-eqz v224, :cond_54

    const/4 v6, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1442
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1438
    .end local v224    # "res":Z
    .end local v228    # "secure":Z
    :cond_53
    const/16 v228, 0x0

    goto :goto_4c

    .line 1441
    .restart local v224    # "res":Z
    .restart local v228    # "secure":Z
    :cond_54
    const/4 v6, 0x0

    goto :goto_4d

    .line 1446
    .end local v211    # "pids":[I
    .end local v219    # "reason":Ljava/lang/String;
    .end local v224    # "res":Z
    .end local v228    # "secure":Z
    :sswitch_6f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v219

    .line 1448
    .restart local v219    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v219

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v224

    .line 1449
    .restart local v224    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    if-eqz v224, :cond_55

    const/4 v6, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1451
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1450
    :cond_55
    const/4 v6, 0x0

    goto :goto_4e

    .line 1455
    .end local v219    # "reason":Ljava/lang/String;
    .end local v224    # "res":Z
    :sswitch_70
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1457
    .local v7, "app":Landroid/os/IBinder;
    new-instance v153, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v153

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1458
    .local v153, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v153

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1464
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v153    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :sswitch_71
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1466
    .restart local v7    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v239

    .line 1467
    .local v239, "tag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    const/16 v238, 0x1

    .line 1468
    .local v238, "system":Z
    :goto_4f
    new-instance v153, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v153

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1469
    .restart local v153    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v239

    move/from16 v2, v238

    move-object/from16 v3, v153

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v224

    .line 1470
    .restart local v224    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    if-eqz v224, :cond_57

    const/4 v6, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1472
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1467
    .end local v153    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v224    # "res":Z
    .end local v238    # "system":Z
    :cond_56
    const/16 v238, 0x0

    goto :goto_4f

    .line 1471
    .restart local v153    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local v224    # "res":Z
    .restart local v238    # "system":Z
    :cond_57
    const/4 v6, 0x0

    goto :goto_50

    .line 1476
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v153    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v224    # "res":Z
    .end local v238    # "system":Z
    .end local v239    # "tag":Ljava/lang/String;
    :sswitch_72
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1478
    .restart local v7    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v253

    .line 1479
    .local v253, "violationMask":I
    new-instance v176, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v176

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1480
    .local v176, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move/from16 v1, v253

    move-object/from16 v2, v176

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1482
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1486
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v176    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v253    # "violationMask":I
    :sswitch_73
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v229

    .line 1488
    .local v229, "sig":I
    move-object/from16 v0, p0

    move/from16 v1, v229

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1490
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1494
    .end local v229    # "sig":I
    :sswitch_74
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1496
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1497
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1498
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1499
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1503
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_75
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1504
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1506
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1510
    :sswitch_76
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1512
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1513
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    .line 1514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1515
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1520
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_77
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1522
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1523
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackageByAdmin(Ljava/lang/String;I)V

    .line 1524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1525
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1530
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_78
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1531
    new-instance v176, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v176 .. v176}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1533
    .local v176, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1535
    const/4 v6, 0x0

    move-object/from16 v0, v176

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1536
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1540
    .end local v176    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :sswitch_79
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1541
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v27

    .line 1542
    .local v27, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1543
    const/4 v6, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1544
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1548
    .end local v27    # "config":Landroid/content/pm/ConfigurationInfo;
    :sswitch_7a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v105

    .line 1550
    .local v105, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1551
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_58

    const/16 v107, 0x1

    .line 1552
    .local v107, "start":Z
    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v109

    .line 1553
    .local v109, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_59

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_52
    move-object/from16 v104, p0

    move/from16 v106, v17

    move-object/from16 v108, v15

    .line 1555
    invoke-virtual/range {v104 .. v109}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v224

    .line 1556
    .restart local v224    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1557
    if-eqz v224, :cond_5a

    const/4 v6, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1558
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1551
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v107    # "start":Z
    .end local v109    # "profileType":I
    .end local v224    # "res":Z
    :cond_58
    const/16 v107, 0x0

    goto :goto_51

    .line 1553
    .restart local v107    # "start":Z
    .restart local v109    # "profileType":I
    :cond_59
    const/4 v15, 0x0

    goto :goto_52

    .line 1557
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v224    # "res":Z
    :cond_5a
    const/4 v6, 0x0

    goto :goto_53

    .line 1562
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v17    # "userId":I
    .end local v105    # "process":Ljava/lang/String;
    .end local v107    # "start":Z
    .end local v109    # "profileType":I
    .end local v224    # "res":Z
    :sswitch_7b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v224

    .line 1564
    .restart local v224    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1565
    if-eqz v224, :cond_5b

    const/4 v6, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1566
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1565
    :cond_5b
    const/4 v6, 0x0

    goto :goto_54

    .line 1570
    .end local v224    # "res":Z
    :sswitch_7c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1571
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1573
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1577
    :sswitch_7d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1584
    :sswitch_7e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1585
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/content/Intent;

    .line 1586
    .local v67, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1587
    .restart local v10    # "resolvedType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1, v10}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v149

    .line 1588
    .local v149, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1589
    move-object/from16 v0, p3

    move-object/from16 v1, v149

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1590
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1594
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v67    # "service":Landroid/content/Intent;
    .end local v149    # "binder":Landroid/os/IBinder;
    :sswitch_7f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1595
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v176

    check-cast v176, Landroid/content/pm/ApplicationInfo;

    .line 1596
    .local v176, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v148

    .line 1597
    .local v148, "backupRestoreMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    move/from16 v2, v148

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v237

    .line 1598
    .local v237, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    if-eqz v237, :cond_5c

    const/4 v6, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1600
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1599
    :cond_5c
    const/4 v6, 0x0

    goto :goto_55

    .line 1604
    .end local v148    # "backupRestoreMode":I
    .end local v176    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v237    # "success":Z
    :sswitch_80
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1606
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v141

    .line 1607
    .local v141, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v141

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1609
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1613
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v141    # "agent":Landroid/os/IBinder;
    :sswitch_81
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1614
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v176

    check-cast v176, Landroid/content/pm/ApplicationInfo;

    .line 1615
    .restart local v176    # "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1617
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1621
    .end local v176    # "info":Landroid/content/pm/ApplicationInfo;
    :sswitch_82
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1623
    .restart local v20    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->addPackageDependency(Ljava/lang/String;)V

    .line 1624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1625
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1629
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_83
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v212

    .line 1631
    .local v212, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v144

    .line 1632
    .local v144, "appid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v219

    .line 1633
    .restart local v219    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v212

    move/from16 v2, v144

    move-object/from16 v3, v219

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V

    .line 1634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1635
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1639
    .end local v144    # "appid":I
    .end local v212    # "pkg":Ljava/lang/String;
    .end local v219    # "reason":Ljava/lang/String;
    :sswitch_84
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v219

    .line 1641
    .restart local v219    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v219

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1643
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1647
    .end local v219    # "reason":Ljava/lang/String;
    :sswitch_85
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v211

    .line 1649
    .restart local v211    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v211

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v224

    .line 1650
    .local v224, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1651
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v224

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1652
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1656
    .end local v211    # "pids":[I
    .end local v224    # "res":[Landroid/os/Debug$MemoryInfo;
    :sswitch_86
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v215

    .line 1658
    .local v215, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1659
    .restart local v99    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v215

    move/from16 v2, v99

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1661
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1665
    .end local v99    # "uid":I
    .end local v215    # "processName":Ljava/lang/String;
    :sswitch_87
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1667
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1668
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v165

    .line 1669
    .local v165, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v166

    .line 1670
    .local v166, "exitAnim":I
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v20

    move/from16 v3, v165

    move/from16 v4, v166

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1671
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1672
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1676
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v165    # "enterAnim":I
    .end local v166    # "exitAnim":I
    :sswitch_88
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1677
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v145

    .line 1678
    .local v145, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1679
    if-eqz v145, :cond_5d

    const/4 v6, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1680
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1679
    :cond_5d
    const/4 v6, 0x0

    goto :goto_56

    .line 1684
    .end local v145    # "areThey":Z
    :sswitch_89
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_5e

    const/16 v199, 0x1

    .line 1686
    .local v199, "monkey":Z
    :goto_57
    move-object/from16 v0, p0

    move/from16 v1, v199

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    .line 1687
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1688
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1685
    .end local v199    # "monkey":Z
    :cond_5e
    const/16 v199, 0x0

    goto :goto_57

    .line 1692
    :sswitch_8a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1693
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1695
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1699
    :sswitch_8b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1701
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v184

    .line 1702
    .local v184, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1703
    if-eqz v184, :cond_5f

    const/4 v6, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1704
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1703
    :cond_5f
    const/4 v6, 0x0

    goto :goto_58

    .line 1708
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v184    # "isit":Z
    :sswitch_8c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1710
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v183

    .line 1711
    .local v183, "isTopOfTask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1712
    if-eqz v183, :cond_60

    const/4 v6, 0x1

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1713
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1712
    :cond_60
    const/4 v6, 0x0

    goto :goto_59

    .line 1717
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v183    # "isTopOfTask":Z
    :sswitch_8d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1719
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v157

    .line 1720
    .local v157, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1721
    if-eqz v157, :cond_61

    const/4 v6, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1722
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1721
    :cond_61
    const/4 v6, 0x0

    goto :goto_5a

    .line 1726
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v157    # "converted":Z
    :sswitch_8e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1729
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_62

    .line 1730
    const/16 v150, 0x0

    .line 1734
    .local v150, "bundle":Landroid/os/Bundle;
    :goto_5b
    if-nez v150, :cond_63

    const/16 v16, 0x0

    .line 1735
    .local v16, "options":Landroid/app/ActivityOptions;
    :goto_5c
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    move-result v157

    .line 1736
    .restart local v157    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1737
    if-eqz v157, :cond_64

    const/4 v6, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1738
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1732
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v150    # "bundle":Landroid/os/Bundle;
    .end local v157    # "converted":Z
    :cond_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v150

    .restart local v150    # "bundle":Landroid/os/Bundle;
    goto :goto_5b

    .line 1734
    :cond_63
    new-instance v16, Landroid/app/ActivityOptions;

    move-object/from16 v0, v16

    move-object/from16 v1, v150

    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_5c

    .line 1737
    .restart local v16    # "options":Landroid/app/ActivityOptions;
    .restart local v157    # "converted":Z
    :cond_64
    const/4 v6, 0x0

    goto :goto_5d

    .line 1742
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v150    # "bundle":Landroid/os/Bundle;
    .end local v157    # "converted":Z
    :sswitch_8f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1744
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    move-result-object v16

    .line 1745
    .restart local v16    # "options":Landroid/app/ActivityOptions;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1746
    if-nez v16, :cond_65

    const/4 v6, 0x0

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1747
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1746
    :cond_65
    invoke-virtual/range {v16 .. v16}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_5e

    .line 1751
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_90
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1753
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_66

    const/16 v174, 0x1

    .line 1754
    .local v174, "imm":Z
    :goto_5f
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v174

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1755
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1753
    .end local v174    # "imm":Z
    :cond_66
    const/16 v174, 0x0

    goto :goto_5f

    .line 1760
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_91
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1761
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v184

    .line 1762
    .restart local v184    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1763
    if-eqz v184, :cond_67

    const/4 v6, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1763
    :cond_67
    const/4 v6, 0x0

    goto :goto_60

    .line 1768
    .end local v184    # "isit":Z
    :sswitch_92
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1770
    .restart local v99    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v177

    .line 1771
    .local v177, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1772
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v197

    .line 1773
    .local v197, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v99

    move/from16 v2, v177

    move-object/from16 v3, v20

    move-object/from16 v4, v197

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1774
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1775
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1779
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v99    # "uid":I
    .end local v177    # "initialPid":I
    .end local v197    # "message":Ljava/lang/String;
    :sswitch_93
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1780
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1781
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1782
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v81

    .line 1783
    .local v81, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1784
    move-object/from16 v0, p3

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1785
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1789
    .end local v17    # "userId":I
    .end local v81    # "type":Ljava/lang/String;
    .end local v97    # "uri":Landroid/net/Uri;
    :sswitch_94
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1791
    .restart local v94    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    .line 1792
    .local v23, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1793
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1794
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1798
    .end local v23    # "perm":Landroid/os/IBinder;
    .end local v94    # "name":Ljava/lang/String;
    :sswitch_95
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v111

    .line 1800
    .local v111, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 1801
    .local v112, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v103

    .line 1802
    .restart local v103    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1803
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1804
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 1805
    .local v116, "sourceUserId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v117

    .local v117, "targetUserId":I
    move-object/from16 v110, p0

    move-object/from16 v113, v103

    move-object/from16 v114, v97

    move/from16 v115, v100

    .line 1806
    invoke-virtual/range {v110 .. v117}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 1808
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1809
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1813
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    .end local v103    # "targetPkg":Ljava/lang/String;
    .end local v111    # "owner":Landroid/os/IBinder;
    .end local v112    # "fromUid":I
    .end local v116    # "sourceUserId":I
    .end local v117    # "targetUserId":I
    :sswitch_96
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v111

    .line 1815
    .restart local v111    # "owner":Landroid/os/IBinder;
    const/16 v97, 0x0

    .line 1816
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_68

    .line 1817
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    .end local v97    # "uri":Landroid/net/Uri;
    check-cast v97, Landroid/net/Uri;

    .line 1819
    .restart local v97    # "uri":Landroid/net/Uri;
    :cond_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1820
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1821
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v111

    move-object/from16 v2, v97

    move/from16 v3, v100

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 1822
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1823
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1827
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    .end local v111    # "owner":Landroid/os/IBinder;
    :sswitch_97
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1829
    .restart local v41    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v103

    .line 1830
    .restart local v103    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1831
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v122

    .line 1832
    .local v122, "modeFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v118, p0

    move/from16 v119, v41

    move-object/from16 v120, v103

    move-object/from16 v121, v97

    move/from16 v123, v17

    .line 1833
    invoke-virtual/range {v118 .. v123}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v224

    .line 1834
    .local v224, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1835
    move-object/from16 v0, p3

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1836
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1840
    .end local v17    # "userId":I
    .end local v41    # "callingUid":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v103    # "targetPkg":Ljava/lang/String;
    .end local v122    # "modeFlags":I
    .end local v224    # "res":I
    :sswitch_98
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v105

    .line 1842
    .restart local v105    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1843
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_69

    const/16 v126, 0x1

    .line 1844
    .local v126, "managed":Z
    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 1845
    .local v127, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6a

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v128, v6

    .local v128, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_62
    move-object/from16 v123, p0

    move-object/from16 v124, v105

    move/from16 v125, v17

    .line 1847
    invoke-virtual/range {v123 .. v128}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v224

    .line 1848
    .local v224, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1849
    if-eqz v224, :cond_6b

    const/4 v6, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1850
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1843
    .end local v126    # "managed":Z
    .end local v127    # "path":Ljava/lang/String;
    .end local v128    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v224    # "res":Z
    :cond_69
    const/16 v126, 0x0

    goto :goto_61

    .line 1845
    .restart local v126    # "managed":Z
    .restart local v127    # "path":Ljava/lang/String;
    :cond_6a
    const/16 v128, 0x0

    goto :goto_62

    .line 1849
    .restart local v128    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v224    # "res":Z
    :cond_6b
    const/4 v6, 0x0

    goto :goto_63

    .line 1855
    .end local v17    # "userId":I
    .end local v105    # "process":Ljava/lang/String;
    .end local v126    # "managed":Z
    .end local v127    # "path":Ljava/lang/String;
    .end local v128    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v224    # "res":Z
    :sswitch_99
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v147

    .line 1857
    .restart local v147    # "b":Landroid/os/IBinder;
    invoke-static/range {v147 .. v147}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1858
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1859
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v132

    check-cast v132, [Landroid/content/Intent;

    .line 1860
    .local v132, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v133

    .line 1861
    .local v133, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1862
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6c

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 1864
    .local v16, "options":Landroid/os/Bundle;
    :goto_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v129, p0

    move-object/from16 v130, v7

    move-object/from16 v131, v8

    move-object/from16 v134, v11

    move-object/from16 v135, v16

    move/from16 v136, v17

    .line 1865
    invoke-virtual/range {v129 .. v136}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v223

    .line 1867
    .local v223, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1868
    move-object/from16 v0, p3

    move/from16 v1, v223

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1869
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1862
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v223    # "result":I
    :cond_6c
    const/16 v16, 0x0

    goto :goto_64

    .line 1874
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v132    # "intents":[Landroid/content/Intent;
    .end local v133    # "resolvedTypes":[Ljava/lang/String;
    .end local v147    # "b":Landroid/os/IBinder;
    :sswitch_9a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1875
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v100

    .line 1876
    .restart local v100    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1877
    move-object/from16 v0, p3

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1878
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1883
    .end local v100    # "mode":I
    :sswitch_9b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1884
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1885
    .restart local v100    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1886
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1887
    move-object/from16 v0, p3

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1888
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1893
    .end local v100    # "mode":I
    :sswitch_9c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v212

    .line 1895
    .restart local v212    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v212

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v100

    .line 1896
    .restart local v100    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1897
    move-object/from16 v0, p3

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1898
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1903
    .end local v100    # "mode":I
    .end local v212    # "pkg":Ljava/lang/String;
    :sswitch_9d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v212

    .line 1905
    .restart local v212    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1906
    .restart local v100    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v212

    move/from16 v2, v100

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1908
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1912
    .end local v100    # "mode":I
    .end local v212    # "pkg":Ljava/lang/String;
    :sswitch_9e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1913
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v250

    .line 1914
    .local v250, "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v250

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v223

    .line 1915
    .local v223, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1916
    if-eqz v223, :cond_6d

    const/4 v6, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1917
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1916
    :cond_6d
    const/4 v6, 0x0

    goto :goto_65

    .line 1921
    .end local v223    # "result":Z
    .end local v250    # "userid":I
    :sswitch_9f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v250

    .line 1923
    .restart local v250    # "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v250

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startUserInBackground(I)Z

    move-result v223

    .line 1924
    .restart local v223    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1925
    if-eqz v223, :cond_6e

    const/4 v6, 0x1

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1926
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1925
    :cond_6e
    const/4 v6, 0x0

    goto :goto_66

    .line 1930
    .end local v223    # "result":Z
    .end local v250    # "userid":I
    :sswitch_a0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v250

    .line 1932
    .restart local v250    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v151

    .line 1934
    .local v151, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v250

    move-object/from16 v2, v151

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->stopUser(ILandroid/app/IStopUserCallback;)I

    move-result v223

    .line 1935
    .local v223, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1936
    move-object/from16 v0, p3

    move/from16 v1, v223

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1937
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1941
    .end local v151    # "callback":Landroid/app/IStopUserCallback;
    .end local v223    # "result":I
    .end local v250    # "userid":I
    :sswitch_a1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1942
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v249

    .line 1943
    .local v249, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1944
    const/4 v6, 0x0

    move-object/from16 v0, v249

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1945
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1949
    .end local v249    # "userInfo":Landroid/content/pm/UserInfo;
    :sswitch_a2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v250

    .line 1951
    .restart local v250    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6f

    const/16 v204, 0x1

    .line 1952
    .local v204, "orStopping":Z
    :goto_67
    move-object/from16 v0, p0

    move/from16 v1, v250

    move/from16 v2, v204

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(IZ)Z

    move-result v223

    .line 1953
    .local v223, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1954
    if-eqz v223, :cond_70

    const/4 v6, 0x1

    :goto_68
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1955
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1951
    .end local v204    # "orStopping":Z
    .end local v223    # "result":Z
    :cond_6f
    const/16 v204, 0x0

    goto :goto_67

    .line 1954
    .restart local v204    # "orStopping":Z
    .restart local v223    # "result":Z
    :cond_70
    const/4 v6, 0x0

    goto :goto_68

    .line 1959
    .end local v204    # "orStopping":Z
    .end local v223    # "result":Z
    .end local v250    # "userid":I
    :sswitch_a3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1960
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    move-result-object v223

    .line 1961
    .local v223, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1962
    move-object/from16 v0, p3

    move-object/from16 v1, v223

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1963
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1968
    .end local v223    # "result":[I
    :sswitch_a4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v243

    .line 1970
    .restart local v243    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 1971
    .restart local v70    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v243

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeTask(II)Z

    move-result v223

    .line 1972
    .local v223, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1973
    if-eqz v223, :cond_71

    const/4 v6, 0x1

    :goto_69
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1974
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1973
    :cond_71
    const/4 v6, 0x0

    goto :goto_69

    .line 1978
    .end local v70    # "fl":I
    .end local v223    # "result":Z
    .end local v243    # "taskId":I
    :sswitch_a5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v202

    .line 1981
    .local v202, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v202

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1982
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1986
    .end local v202    # "observer":Landroid/app/IProcessObserver;
    :sswitch_a6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1987
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v202

    .line 1989
    .restart local v202    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v202

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1990
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1995
    .end local v202    # "observer":Landroid/app/IProcessObserver;
    :sswitch_a7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1996
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v212

    .line 1997
    .restart local v212    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v212

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v146

    .line 1998
    .local v146, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1999
    if-eqz v146, :cond_72

    const/4 v6, 0x1

    :goto_6a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2000
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1999
    :cond_72
    const/4 v6, 0x0

    goto :goto_6a

    .line 2005
    .end local v146    # "ask":Z
    .end local v212    # "pkg":Ljava/lang/String;
    :sswitch_a8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v212

    .line 2007
    .restart local v212    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_73

    const/16 v146, 0x1

    .line 2008
    .restart local v146    # "ask":Z
    :goto_6b
    move-object/from16 v0, p0

    move-object/from16 v1, v212

    move/from16 v2, v146

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2009
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2010
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2007
    .end local v146    # "ask":Z
    :cond_73
    const/16 v146, 0x0

    goto :goto_6b

    .line 2014
    .end local v212    # "pkg":Ljava/lang/String;
    :sswitch_a9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v218

    .line 2017
    .restart local v218    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v218

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v224

    .line 2018
    .restart local v224    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2019
    if-eqz v224, :cond_74

    const/4 v6, 0x1

    :goto_6c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2020
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2019
    :cond_74
    const/4 v6, 0x0

    goto :goto_6c

    .line 2024
    .end local v218    # "r":Landroid/content/IIntentSender;
    .end local v224    # "res":Z
    :sswitch_aa
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2025
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v218

    .line 2027
    .restart local v218    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v218

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v224

    .line 2028
    .restart local v224    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2029
    if-eqz v224, :cond_75

    const/4 v6, 0x1

    :goto_6d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2030
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2029
    :cond_75
    const/4 v6, 0x0

    goto :goto_6d

    .line 2034
    .end local v218    # "r":Landroid/content/IIntentSender;
    .end local v224    # "res":Z
    :sswitch_ab
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v218

    .line 2037
    .restart local v218    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v218

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v9

    .line 2038
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2039
    if-eqz v9, :cond_76

    .line 2040
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2041
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2045
    :goto_6e
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2043
    :cond_76
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6e

    .line 2049
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v218    # "r":Landroid/content/IIntentSender;
    :sswitch_ac
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v218

    .line 2052
    .restart local v218    # "r":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v214

    .line 2053
    .local v214, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v218

    move-object/from16 v2, v214

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v239

    .line 2054
    .restart local v239    # "tag":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2055
    move-object/from16 v0, p3

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2056
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2060
    .end local v214    # "prefix":Ljava/lang/String;
    .end local v218    # "r":Landroid/content/IIntentSender;
    .end local v239    # "tag":Ljava/lang/String;
    :sswitch_ad
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2061
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 2062
    .local v27, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 2063
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2064
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2068
    .end local v27    # "config":Landroid/content/res/Configuration;
    :sswitch_ae
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2069
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v211

    .line 2070
    .restart local v211    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v211

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v217

    .line 2071
    .local v217, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2072
    move-object/from16 v0, p3

    move-object/from16 v1, v217

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2073
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2077
    .end local v211    # "pids":[I
    .end local v217    # "pss":[J
    :sswitch_af
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2078
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v200

    check-cast v200, Ljava/lang/CharSequence;

    .line 2079
    .local v200, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_77

    const/16 v143, 0x1

    .line 2080
    .local v143, "always":Z
    :goto_6f
    move-object/from16 v0, p0

    move-object/from16 v1, v200

    move/from16 v2, v143

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 2081
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2082
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2079
    .end local v143    # "always":Z
    :cond_77
    const/16 v143, 0x0

    goto :goto_6f

    .line 2086
    .end local v200    # "msg":Ljava/lang/CharSequence;
    :sswitch_b0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2087
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->keyguardWaitingForActivityDrawn()V

    .line 2088
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2089
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2094
    :sswitch_b1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2095
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v241

    check-cast v241, Landroid/content/Intent;

    .line 2096
    .local v241, "target":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v241

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->keyguardWaitingForActivityDrawnTarget(Landroid/content/Intent;)V

    .line 2097
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2098
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2103
    .end local v241    # "target":Landroid/content/Intent;
    :sswitch_b2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2105
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v161

    .line 2106
    .local v161, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v161

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v224

    .line 2107
    .restart local v224    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2108
    if-eqz v224, :cond_78

    const/4 v6, 0x1

    :goto_70
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2109
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2108
    :cond_78
    const/4 v6, 0x0

    goto :goto_70

    .line 2113
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v161    # "destAffinity":Ljava/lang/String;
    .end local v224    # "res":Z
    :sswitch_b3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2115
    .restart local v60    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v241

    check-cast v241, Landroid/content/Intent;

    .line 2116
    .restart local v241    # "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 2117
    .restart local v51    # "resultCode":I
    const/16 v52, 0x0

    .line 2118
    .local v52, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_79

    .line 2119
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    .end local v52    # "resultData":Landroid/content/Intent;
    check-cast v52, Landroid/content/Intent;

    .line 2121
    .restart local v52    # "resultData":Landroid/content/Intent;
    :cond_79
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v241

    move/from16 v3, v51

    move-object/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v224

    .line 2122
    .restart local v224    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2123
    if-eqz v224, :cond_7a

    const/4 v6, 0x1

    :goto_71
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2124
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2123
    :cond_7a
    const/4 v6, 0x0

    goto :goto_71

    .line 2128
    .end local v51    # "resultCode":I
    .end local v52    # "resultData":Landroid/content/Intent;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v224    # "res":Z
    .end local v241    # "target":Landroid/content/Intent;
    :sswitch_b4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2130
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v224

    .line 2131
    .local v224, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2132
    move-object/from16 v0, p3

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2133
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2137
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v224    # "res":I
    :sswitch_b5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2139
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v224

    .line 2140
    .local v224, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2141
    move-object/from16 v0, p3

    move-object/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2142
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2146
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v224    # "res":Ljava/lang/String;
    :sswitch_b6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v202

    .line 2149
    .local v202, "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v202

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2151
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2155
    .end local v202    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_b7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v202

    .line 2158
    .restart local v202    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v202

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2160
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2165
    .end local v202    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_b8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v250

    .line 2167
    .restart local v250    # "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v250

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->clearRecentTasks(I)Z

    move-result v223

    .line 2168
    .restart local v223    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2169
    if-eqz v223, :cond_7b

    const/4 v6, 0x1

    :goto_72
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2170
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2169
    :cond_7b
    const/4 v6, 0x0

    goto :goto_72

    .line 2175
    .end local v223    # "result":Z
    .end local v250    # "userid":I
    :sswitch_b9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2176
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->requestBugReport()V

    .line 2177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2178
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2182
    :sswitch_ba
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 2184
    .restart local v98    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7c

    const/16 v138, 0x1

    .line 2185
    .local v138, "aboveSystem":Z
    :goto_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v219

    .line 2186
    .restart local v219    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v98

    move/from16 v2, v138

    move-object/from16 v3, v219

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v224

    .line 2187
    .local v224, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2188
    move-object/from16 v0, p3

    move-wide/from16 v1, v224

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2189
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2184
    .end local v138    # "aboveSystem":Z
    .end local v219    # "reason":Ljava/lang/String;
    .end local v224    # "res":J
    :cond_7c
    const/16 v138, 0x0

    goto :goto_73

    .line 2193
    .end local v98    # "pid":I
    :sswitch_bb
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v221

    .line 2195
    .local v221, "requestType":I
    move-object/from16 v0, p0

    move/from16 v1, v221

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v224

    .line 2196
    .local v224, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2197
    move-object/from16 v0, p3

    move-object/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2198
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2202
    .end local v221    # "requestType":I
    .end local v224    # "res":Landroid/os/Bundle;
    :sswitch_bc
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2204
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v167

    .line 2205
    .local v167, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v167

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 2206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2207
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2211
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v167    # "extras":Landroid/os/Bundle;
    :sswitch_bd
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2212
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2213
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v221

    .line 2214
    .restart local v221    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v170

    .line 2215
    .local v170, "hint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v248

    .line 2216
    .local v248, "userHandle":I
    move-object/from16 v0, p0

    move/from16 v1, v221

    move-object/from16 v2, v170

    move/from16 v3, v248

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/app/ActivityManagerNative;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;I)Z

    move-result v224

    .line 2217
    .local v224, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2218
    if-eqz v224, :cond_7d

    const/4 v6, 0x1

    :goto_74
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2219
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2218
    :cond_7d
    const/4 v6, 0x0

    goto :goto_74

    .line 2223
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v170    # "hint":Ljava/lang/String;
    .end local v221    # "requestType":I
    .end local v224    # "res":Z
    .end local v248    # "userHandle":I
    :sswitch_be
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 2225
    .restart local v99    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v219

    .line 2226
    .restart local v219    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v99

    move-object/from16 v2, v219

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killUid(ILjava/lang/String;)V

    .line 2227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2228
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2232
    .end local v99    # "uid":I
    .end local v219    # "reason":Ljava/lang/String;
    :sswitch_bf
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 2234
    .restart local v50    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7e

    const/16 v142, 0x1

    .line 2235
    .local v142, "allowRestart":Z
    :goto_75
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v142

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    .line 2236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2237
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2234
    .end local v142    # "allowRestart":Z
    :cond_7e
    const/16 v142, 0x0

    goto :goto_75

    .line 2241
    .end local v50    # "who":Landroid/os/IBinder;
    :sswitch_c0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2243
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    .line 2244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2245
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2249
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_c1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2251
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 2252
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2253
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2257
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_c2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2258
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    .line 2259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2260
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2264
    :sswitch_c3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2265
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    .line 2266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2267
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2271
    :sswitch_c4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v205

    .line 2273
    .local v205, "parentActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainerCallback;

    move-result-object v151

    .line 2275
    .local v151, "callback":Landroid/app/IActivityContainerCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v205

    move-object/from16 v2, v151

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->createActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    move-result-object v139

    .line 2277
    .local v139, "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2278
    if-eqz v139, :cond_7f

    .line 2279
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2280
    invoke-interface/range {v139 .. v139}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2284
    :goto_76
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2282
    :cond_7f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_76

    .line 2288
    .end local v139    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v151    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v205    # "parentActivityToken":Landroid/os/IBinder;
    :sswitch_c5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    move-result-object v139

    .line 2291
    .restart local v139    # "activityContainer":Landroid/app/IActivityContainer;
    move-object/from16 v0, p0

    move-object/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 2292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2293
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2297
    .end local v139    # "activityContainer":Landroid/app/IActivityContainer;
    :sswitch_c6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v140

    .line 2299
    .restart local v140    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getEnclosingActivityContainer(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    move-result-object v139

    .line 2300
    .restart local v139    # "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2301
    if-eqz v139, :cond_80

    .line 2302
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2303
    invoke-interface/range {v139 .. v139}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2307
    :goto_77
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2305
    :cond_80
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_77

    .line 2311
    .end local v139    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v140    # "activityToken":Landroid/os/IBinder;
    :sswitch_c7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2312
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getHomeActivityToken()Landroid/os/IBinder;

    move-result-object v171

    .line 2313
    .local v171, "homeActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2314
    move-object/from16 v0, p3

    move-object/from16 v1, v171

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2315
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2319
    .end local v171    # "homeActivityToken":Landroid/os/IBinder;
    :sswitch_c8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v243

    .line 2321
    .restart local v243    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v243

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(I)V

    .line 2322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2323
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2327
    .end local v243    # "taskId":I
    :sswitch_c9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2329
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(Landroid/os/IBinder;)V

    .line 2330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2331
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2335
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_ca
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2336
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->startLockTaskModeOnCurrent()V

    .line 2337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2338
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2342
    :sswitch_cb
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2343
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskMode()V

    .line 2344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2345
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2349
    :sswitch_cc
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2350
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskModeOnCurrent()V

    .line 2351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2352
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2356
    :sswitch_cd
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2357
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isInLockTaskMode()Z

    move-result v182

    .line 2358
    .local v182, "isInLockTaskMode":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2359
    if-eqz v182, :cond_81

    const/4 v6, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2360
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2359
    :cond_81
    const/4 v6, 0x0

    goto :goto_78

    .line 2364
    .end local v182    # "isInLockTaskMode":Z
    :sswitch_ce
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2366
    .restart local v60    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v252

    check-cast v252, Landroid/app/ActivityManager$TaskDescription;

    .line 2368
    .local v252, "values":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v252

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 2369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2370
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2374
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v252    # "values":Landroid/app/ActivityManager$TaskDescription;
    :sswitch_cf
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v168

    .line 2376
    .local v168, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v173

    .line 2377
    .local v173, "icon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2378
    if-nez v173, :cond_82

    .line 2379
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2384
    :goto_79
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2381
    :cond_82
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2382
    const/4 v6, 0x0

    move-object/from16 v0, v173

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_79

    .line 2388
    .end local v168    # "filename":Ljava/lang/String;
    .end local v173    # "icon":Landroid/graphics/Bitmap;
    :sswitch_d0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2390
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-lez v6, :cond_83

    const/16 v163, 0x1

    .line 2391
    .local v163, "enable":Z
    :goto_7a
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v163

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v237

    .line 2392
    .restart local v237    # "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2393
    if-eqz v237, :cond_84

    const/4 v6, 0x1

    :goto_7b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2394
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2390
    .end local v163    # "enable":Z
    .end local v237    # "success":Z
    :cond_83
    const/16 v163, 0x0

    goto :goto_7a

    .line 2393
    .restart local v163    # "enable":Z
    .restart local v237    # "success":Z
    :cond_84
    const/4 v6, 0x0

    goto :goto_7b

    .line 2398
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v163    # "enable":Z
    .end local v237    # "success":Z
    :sswitch_d1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2400
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z

    move-result v164

    .line 2401
    .restart local v164    # "enabled":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2402
    if-eqz v164, :cond_85

    const/4 v6, 0x1

    :goto_7c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2403
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2402
    :cond_85
    const/4 v6, 0x0

    goto :goto_7c

    .line 2407
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v164    # "enabled":Z
    :sswitch_d2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2409
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->backgroundResourcesReleased(Landroid/os/IBinder;)V

    .line 2410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2411
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2415
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_d3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2417
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 2418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2419
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2423
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_d4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2425
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2427
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2432
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_d5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2433
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->bootAnimationComplete()V

    .line 2434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2435
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2440
    :sswitch_d6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v156

    .line 2442
    .local v156, "containerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v227

    .line 2443
    .local v227, "runtimeState":I
    move-object/from16 v0, p0

    move/from16 v1, v156

    move/from16 v2, v227

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateKnoxContainerRuntimeState(II)V

    .line 2444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2445
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 124
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_70
        0x3 -> :sswitch_0
        0x4 -> :sswitch_66
        0x5 -> :sswitch_67
        0xb -> :sswitch_9
        0xc -> :sswitch_10
        0xd -> :sswitch_11
        0xe -> :sswitch_12
        0xf -> :sswitch_13
        0x10 -> :sswitch_14
        0x11 -> :sswitch_15
        0x12 -> :sswitch_16
        0x13 -> :sswitch_18
        0x14 -> :sswitch_19
        0x15 -> :sswitch_1c
        0x16 -> :sswitch_1d
        0x17 -> :sswitch_21
        0x18 -> :sswitch_29
        0x19 -> :sswitch_2a
        0x1a -> :sswitch_2c
        0x1b -> :sswitch_34
        0x1d -> :sswitch_35
        0x1e -> :sswitch_37
        0x1f -> :sswitch_38
        0x20 -> :sswitch_a
        0x21 -> :sswitch_3d
        0x22 -> :sswitch_3e
        0x23 -> :sswitch_3f
        0x24 -> :sswitch_42
        0x25 -> :sswitch_43
        0x26 -> :sswitch_44
        0x27 -> :sswitch_17
        0x2a -> :sswitch_69
        0x2b -> :sswitch_6a
        0x2c -> :sswitch_47
        0x2d -> :sswitch_48
        0x2e -> :sswitch_49
        0x2f -> :sswitch_4a
        0x30 -> :sswitch_40
        0x31 -> :sswitch_4f
        0x32 -> :sswitch_50
        0x33 -> :sswitch_58
        0x34 -> :sswitch_59
        0x35 -> :sswitch_5c
        0x36 -> :sswitch_5d
        0x37 -> :sswitch_5f
        0x38 -> :sswitch_60
        0x39 -> :sswitch_6b
        0x3a -> :sswitch_64
        0x3b -> :sswitch_73
        0x3c -> :sswitch_22
        0x3d -> :sswitch_46
        0x3e -> :sswitch_1b
        0x3f -> :sswitch_52
        0x40 -> :sswitch_53
        0x41 -> :sswitch_54
        0x42 -> :sswitch_6c
        0x43 -> :sswitch_7
        0x44 -> :sswitch_6d
        0x45 -> :sswitch_3b
        0x46 -> :sswitch_4d
        0x47 -> :sswitch_4e
        0x48 -> :sswitch_45
        0x49 -> :sswitch_5a
        0x4a -> :sswitch_41
        0x4b -> :sswitch_2b
        0x4c -> :sswitch_65
        0x4d -> :sswitch_26
        0x4e -> :sswitch_5e
        0x4f -> :sswitch_76
        0x50 -> :sswitch_6e
        0x51 -> :sswitch_25
        0x52 -> :sswitch_23
        0x53 -> :sswitch_27
        0x54 -> :sswitch_79
        0x55 -> :sswitch_7e
        0x56 -> :sswitch_7a
        0x57 -> :sswitch_7b
        0x58 -> :sswitch_7c
        0x59 -> :sswitch_7d
        0x5a -> :sswitch_7f
        0x5b -> :sswitch_80
        0x5c -> :sswitch_81
        0x5d -> :sswitch_55
        0x5e -> :sswitch_57
        0x5f -> :sswitch_82
        0x60 -> :sswitch_83
        0x61 -> :sswitch_84
        0x62 -> :sswitch_85
        0x63 -> :sswitch_86
        0x64 -> :sswitch_5
        0x65 -> :sswitch_87
        0x66 -> :sswitch_71
        0x67 -> :sswitch_74
        0x68 -> :sswitch_88
        0x69 -> :sswitch_3
        0x6a -> :sswitch_f
        0x6b -> :sswitch_4
        0x6c -> :sswitch_28
        0x6d -> :sswitch_8a
        0x6e -> :sswitch_72
        0x6f -> :sswitch_8b
        0x70 -> :sswitch_90
        0x71 -> :sswitch_91
        0x72 -> :sswitch_92
        0x73 -> :sswitch_93
        0x74 -> :sswitch_94
        0x75 -> :sswitch_95
        0x76 -> :sswitch_96
        0x77 -> :sswitch_97
        0x78 -> :sswitch_98
        0x79 -> :sswitch_99
        0x7a -> :sswitch_a2
        0x7b -> :sswitch_1a
        0x7c -> :sswitch_9a
        0x7d -> :sswitch_9b
        0x7e -> :sswitch_9c
        0x7f -> :sswitch_9d
        0x80 -> :sswitch_a7
        0x81 -> :sswitch_a8
        0x82 -> :sswitch_9e
        0x84 -> :sswitch_a4
        0x85 -> :sswitch_a5
        0x86 -> :sswitch_a6
        0x87 -> :sswitch_a9
        0x88 -> :sswitch_ad
        0x89 -> :sswitch_ae
        0x8a -> :sswitch_af
        0x8c -> :sswitch_75
        0x8d -> :sswitch_36
        0x8e -> :sswitch_3c
        0x8f -> :sswitch_78
        0x90 -> :sswitch_6f
        0x91 -> :sswitch_a1
        0x92 -> :sswitch_b2
        0x93 -> :sswitch_b3
        0x94 -> :sswitch_68
        0x95 -> :sswitch_b
        0x96 -> :sswitch_b4
        0x97 -> :sswitch_39
        0x98 -> :sswitch_aa
        0x99 -> :sswitch_1
        0x9a -> :sswitch_a0
        0x9b -> :sswitch_b6
        0x9c -> :sswitch_b7
        0x9d -> :sswitch_a3
        0x9e -> :sswitch_b9
        0x9f -> :sswitch_ba
        0xa1 -> :sswitch_ab
        0xa2 -> :sswitch_bb
        0xa3 -> :sswitch_bc
        0xa4 -> :sswitch_b5
        0xa5 -> :sswitch_be
        0xa6 -> :sswitch_89
        0xa7 -> :sswitch_bf
        0xa8 -> :sswitch_c4
        0xa9 -> :sswitch_2d
        0xaa -> :sswitch_2e
        0xab -> :sswitch_2f
        0xac -> :sswitch_32
        0xad -> :sswitch_30
        0xae -> :sswitch_8d
        0xaf -> :sswitch_8e
        0xb0 -> :sswitch_c1
        0xb1 -> :sswitch_c0
        0xb2 -> :sswitch_c2
        0xb3 -> :sswitch_c3
        0xb4 -> :sswitch_61
        0xb5 -> :sswitch_62
        0xb6 -> :sswitch_63
        0xb7 -> :sswitch_3a
        0xb8 -> :sswitch_c7
        0xb9 -> :sswitch_c6
        0xba -> :sswitch_c5
        0xbb -> :sswitch_b8
        0xbc -> :sswitch_d6
        0xbd -> :sswitch_56
        0xd3 -> :sswitch_ac
        0xd4 -> :sswitch_9f
        0xd5 -> :sswitch_31
        0xd6 -> :sswitch_c8
        0xd7 -> :sswitch_c9
        0xd8 -> :sswitch_cb
        0xd9 -> :sswitch_cd
        0xda -> :sswitch_ce
        0xdb -> :sswitch_6
        0xdc -> :sswitch_8f
        0xdd -> :sswitch_1e
        0xde -> :sswitch_ca
        0xdf -> :sswitch_cc
        0xe0 -> :sswitch_c
        0xe1 -> :sswitch_8c
        0xe2 -> :sswitch_d0
        0xe3 -> :sswitch_d1
        0xe4 -> :sswitch_d2
        0xe5 -> :sswitch_d3
        0xe6 -> :sswitch_8
        0xe7 -> :sswitch_d4
        0xe8 -> :sswitch_b0
        0xe9 -> :sswitch_2
        0xea -> :sswitch_1f
        0xeb -> :sswitch_20
        0xec -> :sswitch_d
        0xed -> :sswitch_e
        0xee -> :sswitch_d5
        0xef -> :sswitch_cf
        0xf0 -> :sswitch_bd
        0x3f3 -> :sswitch_4b
        0x3f4 -> :sswitch_33
        0x3f5 -> :sswitch_4c
        0x44d -> :sswitch_24
        0x44e -> :sswitch_b1
        0x4b1 -> :sswitch_77
        0xc1d -> :sswitch_5b
        0xc1e -> :sswitch_51
    .end sparse-switch
.end method
