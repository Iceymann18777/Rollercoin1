.class public final Lcom/yandex/metrica/impl/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/ContentValues;

.field private c:Lcom/yandex/metrica/impl/ob/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/k;)Landroid/content/ContentValues;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/k;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    return-object p0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/u;)Lcom/yandex/metrica/impl/k;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/yandex/metrica/impl/k;->c:Lcom/yandex/metrica/impl/ob/u;

    return-object p0
.end method

.method public a()V
    .registers 5

    .line 1059
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->c:Lcom/yandex/metrica/impl/ob/u;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/u;->h()Lcom/yandex/metrica/impl/ba;

    move-result-object v0

    .line 1060
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_b
    const-string v2, "dId"

    .line 1064
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uId"

    .line 1065
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appVer"

    .line 1066
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appBuild"

    .line 1067
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "kitVer"

    .line 1068
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "clientKitVer"

    .line 1069
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "kitBuildNumber"

    .line 1070
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "kitBuildType"

    .line 1071
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "osVer"

    .line 1072
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "osApiLev"

    .line 1073
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->r()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "lang"

    .line 1074
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "root"

    .line 1075
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->F()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_debuggable"

    .line 1076
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_84} :catch_85

    goto :goto_8a

    .line 1079
    :catch_85
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1082
    :goto_8a
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "report_request_parameters"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/bm;)V
    .registers 5

    .line 224
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/bm;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 226
    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/bm;->c(Landroid/content/Context;)I

    move-result p1

    .line 228
    :try_start_12
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ssid"

    .line 229
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "state"

    .line 230
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 231
    iget-object p1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v0, "wifi_access_point"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2c} :catch_2c

    :catch_2c
    :cond_2c
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/a$a;)V
    .registers 9

    .line 202
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "custom_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_environment"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "truncated"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 1247
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    .line 2051
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_83

    .line 1250
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 1253
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_7b

    goto :goto_84

    .line 1256
    :cond_7b
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_83

    const/4 v3, 0x0

    goto :goto_84

    :cond_83
    const/4 v3, 0x2

    .line 209
    :goto_84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "connection_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2180
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    iget-object v1, p2, Lcom/yandex/metrica/impl/a$a;->a:Ljava/lang/String;

    const-string v2, "app_environment"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    iget-wide v1, p2, Lcom/yandex/metrica/impl/a$a;->b:J

    .line 2186
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "app_environment_revision"

    .line 2184
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3110
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/k;->b()Landroid/location/Location;

    move-result-object p2

    if-eqz p2, :cond_13c

    .line 4088
    :try_start_a9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "lat"

    .line 4091
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "lon"

    .line 4092
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    .line 4095
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "precision"

    .line 4096
    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_df

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_e0

    :cond_df
    move-object v2, v3

    :goto_e0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "direction"

    .line 4097
    invoke-virtual {p2}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_f4

    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_f5

    :cond_f4
    move-object v2, v3

    :goto_f5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "speed"

    .line 4098
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_109

    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_10a

    :cond_109
    move-object v2, v3

    :goto_10a
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "altitude"

    .line 4099
    invoke-virtual {p2}, Landroid/location/Location;->hasAltitude()Z

    move-result v2

    if-eqz v2, :cond_11e

    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_11f

    :cond_11e
    move-object v2, v3

    :goto_11f
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "provider"

    .line 4100
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4102
    iget-object p2, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v1, "location_info"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_13a} :catch_13b

    goto :goto_13c

    :catch_13b
    nop

    .line 5191
    :cond_13c
    :goto_13c
    iget-object p2, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/ef;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ef;

    move-result-object p2

    .line 5192
    new-instance v0, Lcom/yandex/metrica/impl/k$2;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/k$2;-><init>(Lcom/yandex/metrica/impl/k;)V

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/dy;->a(Lcom/yandex/metrica/impl/ob/eh;)V

    .line 6151
    new-instance v0, Lcom/yandex/metrica/impl/k$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/k$1;-><init>(Lcom/yandex/metrica/impl/k;)V

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/dy;->a(Lcom/yandex/metrica/impl/ob/ea;)V

    .line 4218
    iget-object p2, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/yandex/metrica/impl/bm;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/bm;

    move-result-object p2

    .line 7138
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->g()Lorg/json/JSONArray;

    move-result-object p1

    .line 7139
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/bm;->a()Lorg/json/JSONArray;

    move-result-object v0

    .line 7142
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const-string v3, "wifi_network_info"

    if-le v1, v2, :cond_176

    .line 7143
    iget-object p1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17f

    .line 7145
    :cond_176
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4220
    :goto_17f
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/k;->a(Lcom/yandex/metrica/impl/bm;)V

    return-void
.end method

.method b()Landroid/location/Location;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->c:Lcom/yandex/metrica/impl/ob/u;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/u;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->m()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 121
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->c:Lcom/yandex/metrica/impl/ob/u;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/u;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->t()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_30

    .line 125
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/y;->c()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_30

    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/y;->d()Landroid/location/Location;

    move-result-object v0

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :cond_30
    :goto_30
    return-object v0
.end method
