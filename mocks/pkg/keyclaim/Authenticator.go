// Code generated by mockery v2.3.0. DO NOT EDIT.

package mocks

import mock "github.com/stretchr/testify/mock"

// Authenticator is an autogenerated mock type for the Authenticator type
type Authenticator struct {
	mock.Mock
}

// Authenticate provides a mock function with given fields: _a0
func (_m *Authenticator) Authenticate(_a0 string) (string, bool) {
	ret := _m.Called(_a0)

	var r0 string
	if rf, ok := ret.Get(0).(func(string) string); ok {
		r0 = rf(_a0)
	} else {
		r0 = ret.Get(0).(string)
	}

	var r1 bool
	if rf, ok := ret.Get(1).(func(string) bool); ok {
		r1 = rf(_a0)
	} else {
		r1 = ret.Get(1).(bool)
	}

	return r0, r1
}

// RegionFromAuthHeader provides a mock function with given fields: _a0
func (_m *Authenticator) RegionFromAuthHeader(_a0 string) (string, string, bool) {
	ret := _m.Called(_a0)

	var r0 string
	if rf, ok := ret.Get(0).(func(string) string); ok {
		r0 = rf(_a0)
	} else {
		r0 = ret.Get(0).(string)
	}

	var r1 string
	if rf, ok := ret.Get(1).(func(string) string); ok {
		r1 = rf(_a0)
	} else {
		r1 = ret.Get(1).(string)
	}

	var r2 bool
	if rf, ok := ret.Get(2).(func(string) bool); ok {
		r2 = rf(_a0)
	} else {
		r2 = ret.Get(2).(bool)
	}

	return r0, r1, r2
}
