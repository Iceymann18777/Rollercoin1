.class abstract Lcom/onesignal/UserState;
.super Ljava/lang/Object;
.source "UserState.java"


# static fields
.field private static final LOCATION_FIELDS:[Ljava/lang/String;

.field private static final LOCATION_FIELDS_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final syncLock:Ljava/lang/Object;


# instance fields
.field dependValues:Lorg/json/JSONObject;

.field private persistKey:Ljava/lang/String;

.field syncValues:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "lat"

    const-string v1, "long"

    const-string v2, "loc_acc"

    const-string v3, "loc_type"

    const-string v4, "loc_bg"

    const-string v5, "loc_time_stamp"

    const-string v6, "ad_id"

    .line 39
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/UserState;->LOCATION_FIELDS:[Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/onesignal/UserState;->LOCATION_FIELDS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/onesignal/UserState;->LOCATION_FIELDS_SET:Ljava/util/Set;

    .line 43
    new-instance v0, Lcom/onesignal/UserState$1;

    invoke-direct {v0}, Lcom/onesignal/UserState$1;-><init>()V

    sput-object v0, Lcom/onesignal/UserState;->syncLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    if-eqz p2, :cond_b

    .line 52
    invoke-direct {p0}, Lcom/onesignal/UserState;->loadState()V

    goto :goto_19

    .line 54
    :cond_b
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 55
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    :goto_19
    return-void
.end method

.method private static generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/onesignal/UserState;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_3
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/JSONUtils;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 261
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method private getGroupChangeFields(Lcom/onesignal/UserState;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/UserState;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "loc_bg"

    const-string v1, "loc_time_stamp"

    .line 80
    :try_start_4
    iget-object v2, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2d

    .line 81
    iget-object v2, p1, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    iget-object v0, p1, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    sget-object p1, Lcom/onesignal/UserState;->LOCATION_FIELDS_SET:Ljava/util/Set;
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2d

    return-object p1

    :catchall_2d
    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method private loadState()V
    .registers 6

    .line 151
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ONESIGNAL_USERSTATE_DEPENDVALYES_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_55

    .line 155
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 160
    :try_start_23
    iget-object v0, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    const-string v1, "CURRENT_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    .line 161
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v3, "ONESIGNAL_SUBSCRIPTION"

    invoke-static {v0, v3, v1}, Lcom/onesignal/OneSignalPrefs;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_3f

    .line 164
    :cond_37
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v3, "ONESIGNAL_SYNCED_SUBSCRIPTION"

    invoke-static {v0, v3, v1}, Lcom/onesignal/OneSignalPrefs;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    :goto_3f
    const/4 v3, -0x2

    if-ne v0, v3, :cond_44

    const/4 v0, 0x0

    goto :goto_46

    :cond_44
    move v1, v0

    const/4 v0, 0x1

    .line 172
    :goto_46
    iget-object v3, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v4, "subscribableStatus"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    iget-object v1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v3, "userSubscribePref"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_54} :catch_61

    goto :goto_61

    .line 178
    :cond_55
    :try_start_55
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_55 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception v0

    .line 180
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 184
    :catch_61
    :goto_61
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ONESIGNAL_USERSTATE_SYNCVALYES_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_93

    .line 188
    :try_start_7c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 189
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_REGISTRATION_ID"

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "identifier"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9f

    .line 194
    :cond_93
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;
    :try_end_9a
    .catch Lorg/json/JSONException; {:try_start_7c .. :try_end_9a} :catch_9b

    goto :goto_9f

    :catch_9b
    move-exception v0

    .line 196
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_9f
    return-void
.end method


# virtual methods
.method protected abstract addDependFields()V
.end method

.method deepClone(Ljava/lang/String;)Lcom/onesignal/UserState;
    .registers 4

    .line 62
    invoke-virtual {p0, p1}, Lcom/onesignal/UserState;->newInstance(Ljava/lang/String;)Lcom/onesignal/UserState;

    move-result-object p1

    .line 65
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 66
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v0

    .line 68
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_23
    return-object p1
.end method

.method generateJsonDiff(Lcom/onesignal/UserState;Z)Lorg/json/JSONObject;
    .registers 8

    const-string v0, "email_auth_hash"

    const-string v1, "app_id"

    .line 121
    invoke-virtual {p0}, Lcom/onesignal/UserState;->addDependFields()V

    invoke-virtual {p1}, Lcom/onesignal/UserState;->addDependFields()V

    .line 122
    invoke-direct {p0, p1}, Lcom/onesignal/UserState;->getGroupChangeFields(Lcom/onesignal/UserState;)Ljava/util/Set;

    move-result-object v2

    .line 123
    iget-object v3, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const/4 v4, 0x0

    invoke-static {v3, p1, v4, v2}, Lcom/onesignal/UserState;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p2, :cond_26

    .line 125
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "{}"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26

    return-object v4

    .line 130
    :cond_26
    :try_start_26
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_35

    .line 131
    iget-object p2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    :cond_35
    iget-object p2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 133
    iget-object p2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception p2

    .line 135
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4b
    :goto_4b
    return-object p1
.end method

.method abstract isSubscribed()Z
.end method

.method mergeTags(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 9

    .line 223
    sget-object v0, Lcom/onesignal/UserState;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "tags"

    .line 224
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 226
    iget-object v1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "tags"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_81

    if-eqz v1, :cond_29

    .line 228
    :try_start_15
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v3, "tags"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_22} :catch_23
    .catchall {:try_start_15 .. :try_end_22} :catchall_81

    goto :goto_2e

    .line 230
    :catch_23
    :try_start_23
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_2e

    .line 234
    :cond_29
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_2e
    const-string v2, "tags"

    .line 236
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 237
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_81

    .line 241
    :cond_38
    :goto_38
    :try_start_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 242
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    .line 243
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 244
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_38

    :cond_54
    if-eqz p2, :cond_5c

    .line 245
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 246
    :cond_5c
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_38

    .line 249
    :cond_64
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "{}"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 250
    iget-object p1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string p2, "tags"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_7f

    .line 252
    :cond_78
    iget-object p1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string p2, "tags"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7f
    .catchall {:try_start_38 .. :try_end_7f} :catchall_7f

    .line 255
    :catchall_7f
    :cond_7f
    :goto_7f
    :try_start_7f
    monitor-exit v0

    return-void

    :catchall_81
    move-exception p1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_81

    goto :goto_85

    :goto_84
    throw p1

    :goto_85
    goto :goto_84
.end method

.method abstract newInstance(Ljava/lang/String;)Lcom/onesignal/UserState;
.end method

.method persistState()V
    .registers 5

    .line 201
    sget-object v0, Lcom/onesignal/UserState;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_3
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ONESIGNAL_USERSTATE_SYNCVALYES_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 203
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-static {v1, v2, v3}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ONESIGNAL_USERSTATE_DEPENDVALYES_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 205
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-static {v1, v2, v3}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    monitor-exit v0

    return-void

    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 211
    iget-object v1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-static {v1, p1, v1, v0}, Lcom/onesignal/UserState;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    :cond_8
    if-eqz p2, :cond_12

    .line 214
    iget-object v1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-static {v1, p2, v1, v0}, Lcom/onesignal/UserState;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 215
    invoke-virtual {p0, p2, v0}, Lcom/onesignal/UserState;->mergeTags(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_12
    if-nez p1, :cond_16

    if-eqz p2, :cond_19

    .line 219
    :cond_16
    invoke-virtual {p0}, Lcom/onesignal/UserState;->persistState()V

    :cond_19
    return-void
.end method

.method setLocation(Lcom/onesignal/LocationController$LocationPoint;)V
    .registers 5

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "lat"

    iget-object v2, p1, Lcom/onesignal/LocationController$LocationPoint;->lat:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    iget-object v0, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "long"

    iget-object v2, p1, Lcom/onesignal/LocationController$LocationPoint;->log:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    iget-object v0, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "loc_acc"

    iget-object v2, p1, Lcom/onesignal/LocationController$LocationPoint;->accuracy:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    iget-object v0, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "loc_type"

    iget-object v2, p1, Lcom/onesignal/LocationController$LocationPoint;->type:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    iget-object v0, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "loc_bg"

    iget-object v2, p1, Lcom/onesignal/LocationController$LocationPoint;->bg:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    iget-object v0, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "loc_time_stamp"

    iget-object p1, p1, Lcom/onesignal/LocationController$LocationPoint;->timeStamp:Ljava/lang/Long;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p1

    .line 99
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3b
    return-void
.end method
