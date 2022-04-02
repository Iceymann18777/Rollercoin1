.class public Lcom/tappx/a/t3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/t3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/tappx/a/t3$a;
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/tappx/a/t3$a;->a:Z

    return-object p0
.end method

.method public a()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/t3$a;->a:Z

    return v0
.end method
