.class Lcom/startapp/android/publish/ads/list3d/a$a;
.super Landroid/os/AsyncTask;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/list3d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field final synthetic d:Lcom/startapp/android/publish/ads/list3d/a;


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/ads/list3d/a;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 143
    iput-object p1, p0, Lcom/startapp/android/publish/ads/list3d/a$a;->d:Lcom/startapp/android/publish/ads/list3d/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, -0x1

    .line 139
    iput p1, p0, Lcom/startapp/android/publish/ads/list3d/a$a;->a:I

    .line 144
    iput p2, p0, Lcom/startapp/android/publish/ads/list3d/a$a;->a:I

    .line 145
    iput-object p3, p0, Lcom/startapp/android/publish/ads/list3d/a$a;->b:Ljava/lang/String;

    .line 146
    iput-object p4, p0, Lcom/startapp/android/publish/ads/list3d/a$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 2

    .line 151
    iget-object p1, p0, Lcom/startapp/android/publish/ads/list3d/a$a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/startapp/common/a/d;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a$a;->d:Lcom/startapp/android/publish/ads/list3d/a;

    iget v1, v0, Lcom/startapp/android/publish/ads/list3d/a;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/startapp/android/publish/ads/list3d/a;->e:I

    if-eqz p1, :cond_27

    .line 158
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a$a;->d:Lcom/startapp/android/publish/ads/list3d/a;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/list3d/a;->b:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/list3d/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object p1, p0, Lcom/startapp/android/publish/ads/list3d/a$a;->d:Lcom/startapp/android/publish/ads/list3d/a;

    iget-object p1, p1, Lcom/startapp/android/publish/ads/list3d/a;->d:Lcom/startapp/android/publish/ads/list3d/g;

    if-eqz p1, :cond_22

    .line 160
    iget-object p1, p0, Lcom/startapp/android/publish/ads/list3d/a$a;->d:Lcom/startapp/android/publish/ads/list3d/a;

    iget-object p1, p1, Lcom/startapp/android/publish/ads/list3d/a;->d:Lcom/startapp/android/publish/ads/list3d/g;

    iget v0, p0, Lcom/startapp/android/publish/ads/list3d/a$a;->a:I

    invoke-interface {p1, v0}, Lcom/startapp/android/publish/ads/list3d/g;->a(I)V

    .line 162
    :cond_22
    iget-object p1, p0, Lcom/startapp/android/publish/ads/list3d/a$a;->d:Lcom/startapp/android/publish/ads/list3d/a;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/list3d/a;->e()V

    :cond_27
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 138
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/list3d/a$a;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 138
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/list3d/a$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
