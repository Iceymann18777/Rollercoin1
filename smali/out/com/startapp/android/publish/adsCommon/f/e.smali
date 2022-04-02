.class public Lcom/startapp/android/publish/adsCommon/f/e;
.super Lcom/startapp/android/publish/adsCommon/BaseRequest;
.source "StartAppSDK"


# instance fields
.field private a:Lcom/startapp/android/publish/adsCommon/f/d;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Long;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/adsCommon/f/d;)V
    .registers 3

    const-string v0, ""

    .line 37
    invoke-direct {p0, p1, v0, v0}, Lcom/startapp/android/publish/adsCommon/f/e;-><init>(Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->a:Lcom/startapp/android/publish/adsCommon/f/d;

    .line 42
    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/f/e;->b:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/startapp/android/publish/adsCommon/f/e;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/startapp/android/publish/adsCommon/Utils/e;)V
    .registers 6

    .line 59
    invoke-static {}, Lcom/startapp/common/a/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/startapp/common/a/a;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 61
    invoke-static {}, Lcom/startapp/common/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/startapp/common/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 62
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/f/e;->e()Lcom/startapp/android/publish/adsCommon/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/f/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 63
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/f/e;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 64
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/f/e;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "d"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 65
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/f/e;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "orientation"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 66
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/f/e;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "usedRam"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 67
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/f/e;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "freeRam"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 68
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/f/e;->l()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "sessionTime"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 69
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/f/e;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appActivity"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 70
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/f/e;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "details"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 71
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/f/e;->n()Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "details_json"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 72
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/f/e;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cellScanRes"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 74
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/l;->c()Landroid/util/Pair;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/l;->d()Landroid/util/Pair;

    move-result-object v1

    .line 76
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v3, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 77
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    const-string v0, "phone"

    .line 170
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3c

    .line 172
    invoke-static {p1, v0}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 173
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3c

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/startapp/common/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/f/e;->i(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_3c

    :catch_22
    move-exception p1

    const/4 v0, 0x6

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot fillCellDetails "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->k:Lorg/json/JSONArray;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->b:Ljava/lang/String;

    return-void
.end method

.method public e()Lcom/startapp/android/publish/adsCommon/f/d;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/e;->a:Lcom/startapp/android/publish/adsCommon/f/d;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->d:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->e:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->f:Ljava/lang/String;

    return-void
.end method

.method public getNameValueJson()Lcom/startapp/android/publish/adsCommon/Utils/e;
    .registers 2

    .line 48
    invoke-super {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getNameValueJson()Lcom/startapp/android/publish/adsCommon/Utils/e;

    move-result-object v0

    if-nez v0, :cond_b

    .line 50
    new-instance v0, Lcom/startapp/android/publish/adsCommon/Utils/c;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/Utils/c;-><init>()V

    .line 53
    :cond_b
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/adsCommon/f/e;->a(Lcom/startapp/android/publish/adsCommon/Utils/e;)V

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->g:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->j:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/Long;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/e;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lorg/json/JSONArray;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/e;->k:Lorg/json/JSONArray;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InfoEventRequest [category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->a:Lcom/startapp/android/publish/adsCommon/f/d;

    .line 185
    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/f/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", usedRam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", freeRam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->h:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", details_json="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->k:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cellScanRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
