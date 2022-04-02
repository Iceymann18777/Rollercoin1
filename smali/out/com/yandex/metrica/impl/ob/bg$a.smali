.class Lcom/yandex/metrica/impl/ob/bg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:I


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kitVer"

    .line 174
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bg$a;->a:Ljava/lang/String;

    const-string v0, "clientKitVer"

    .line 175
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bg$a;->b:Ljava/lang/String;

    const-string v0, "kitBuildNumber"

    .line 176
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bg$a;->c:Ljava/lang/String;

    const-string v0, "appVer"

    .line 177
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bg$a;->d:Ljava/lang/String;

    const-string v0, "appBuild"

    .line 178
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bg$a;->e:Ljava/lang/String;

    const-string v0, "osVer"

    .line 179
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bg$a;->f:Ljava/lang/String;

    const-string v0, "osApiLev"

    const/4 v1, -0x1

    .line 180
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/yandex/metrica/impl/ob/bg$a;->g:I

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ba;)Z
    .registers 4

    .line 184
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bg$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 185
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bg$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 186
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bg$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 187
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->x()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bg$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 188
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->z()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bg$a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 189
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->q()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bg$a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget v0, p0, Lcom/yandex/metrica/impl/ob/bg$a;->g:I

    .line 190
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->r()I

    move-result p1

    if-ne v0, p1, :cond_52

    const/4 p1, 0x1

    return p1

    :cond_52
    const/4 p1, 0x0

    return p1
.end method
