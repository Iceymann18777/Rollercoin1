.class public Lcom/startapp/android/publish/common/metaData/MetaData$a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/common/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/common/metaData/MetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    iput-object p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData$a;->a:Landroid/content/Context;

    .line 1013
    iput-object p2, p0, Lcom/startapp/android/publish/common/metaData/MetaData$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;I)V
    .registers 5

    if-eqz p1, :cond_b

    .line 1018
    iget-object p2, p0, Lcom/startapp/android/publish/common/metaData/MetaData$a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData$a;->b:Ljava/lang/String;

    const-string v1, ".png"

    invoke-static {p2, p1, v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method
