.class public final Lcom/yandex/metrica/impl/bm$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/yandex/metrica/impl/bm$a;->a:Ljava/lang/String;

    .line 210
    iput-object p2, p0, Lcom/yandex/metrica/impl/bm$a;->b:Ljava/lang/String;

    return-void
.end method
