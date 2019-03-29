.class public Lcom/phone/stop/db/PhoneApplication;
.super Landroid/app/Application;


# static fields
.field private static a:Lcom/phone/stop/db/PhoneApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Lcom/phone/stop/db/PhoneApplication;
    .locals 1

    sget-object v0, Lcom/phone/stop/db/PhoneApplication;->a:Lcom/phone/stop/db/PhoneApplication;

    return-object v0
.end method

.method private b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/phone/stop/db/PhoneApplication;->a:Lcom/phone/stop/db/PhoneApplication;

    invoke-direct {p0}, Lcom/phone/stop/db/PhoneApplication;->b()V

    return-void
.end method
