<?php

namespace App\Admin\Controllers;

use App\Setting;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SettingController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Setting';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Setting());
        // $grid->disableTools();
        $grid->disableFilter();
        $grid->disableCreateButton();
        $grid->disableExport();
        $grid->disableBatchActions();
        $grid->actions(function ($actions) {
            $actions->disableDelete();
            // $actions->disableEdit();
            // $actions->disableView();
        });
        $grid->column('id', __('Id'));
        $grid->column('logo', __('Logo'))->image();
        $grid->column('name', __('Name'));
        $grid->column('headimage', __('Headimage'))->image();
        $grid->column('facebook', __('Facebook'));
        $grid->column('instagram', __('Instagram'));
        $grid->column('twitter', __('Twitter'));
        $grid->column('linkedin', __('Linkedin'));
        $grid->column('email', __('E-Mail'));
        $grid->column('mobile', __('Mobile'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Setting::findOrFail($id));
        $show->panel()->tools(function ($tools) {
            $tools->disableDelete();
            // $tools->disableList();

        });
        $show->field('id', __('Id'));
        $show->field('logo', __('Logo'));
        $show->field('name', __('Name'));
        $show->field('headimage', __('Headimage'));
        $show->field('facebook', __('Facebook'));
        $show->field('instagram', __('Instagram'));
        $show->field('twitter', __('Twitter'));
        $show->field('linkedin', __('Linkedin'));
        $show->field('email', __('E-Mail'));
        $show->field('mobile', __('Mobile'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Setting());
        $form->tools(function (Form\Tools $tools) {
            $tools->disableDelete();
            // $tools->disableList();
            // $tools->disableView();
        });
        $form->image('logo', __('Logo'));
        $form->text('name', __('Name'));
        $form->image('headimage', __('Headimage'));
        $form->text('facebook', __('Facebook'));
        $form->text('instagram', __('Instagram'));
        $form->text('twitter', __('Twitter'));
        $form->text('linkedin', __('Linkedin'));
        $form->text('email', __('E-Mail'));
        $form->text('mobile', __('Mobile'));
        $form->color('s_color', __('Secondary Color'));
        $form->color('p_color', __('Primary Color'));

        return $form;
    }
}
